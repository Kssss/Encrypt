//
//  AESCrypt.m
//  Gurpartap Singh
//
//  Created by Gurpartap Singh on 06/05/12.
//  Copyright (c) 2012 Gurpartap Singh
// 
// 	MIT License
// 
// 	Permission is hereby granted, free of charge, to any person obtaining
// 	a copy of this software and associated documentation files (the
// 	"Software"), to deal in the Software without restriction, including
// 	without limitation the rights to use, copy, modify, merge, publish,
// 	distribute, sublicense, and/or sell copies of the Software, and to
// 	permit persons to whom the Software is furnished to do so, subject to
// 	the following conditions:
// 
// 	The above copyright notice and this permission notice shall be
// 	included in all copies or substantial portions of the Software.
// 
// 	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// 	EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// 	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// 	NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
// 	LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
// 	OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// 	WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "LYTAES.h"

#import "NSData+Base64.h"
#import "NSString+Base64.h"
#import "NSData+CommonCrypto.h"

@implementation LYTAES

+ (NSString *)encrypt:(NSString *)message password:(NSString *)password {
    NSData *data = [self encryptData:[message dataUsingEncoding:NSUTF8StringEncoding] password:password];
    return [NSString lyt_base64StringFromData:data length:[data length]];
}
+ (NSData *)encryptData:(NSData *)data password:(NSString *)password{
    NSData *encryptedData = [data lyt_AES256EncryptedDataUsingKey:[[password dataUsingEncoding:NSUTF8StringEncoding] lyt_SHA256Hash] error:nil];
    return encryptedData;
}


+ (NSString *)decrypt:(NSString *)base64EncodedString password:(NSString *)password {
    NSData *encryptedData = [NSData lyt_base64DataFromString:base64EncodedString];
    NSData * decryptedData = [self decryptData:encryptedData password:password];
    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
}
+ (NSData *)decryptData:(NSData *)data password:(NSString *)password{
    NSData *decryptedData = [data lyt_decryptedAES256DataUsingKey:[[password dataUsingEncoding:NSUTF8StringEncoding] lyt_SHA256Hash] error:nil];
    return decryptedData;
}
@end
