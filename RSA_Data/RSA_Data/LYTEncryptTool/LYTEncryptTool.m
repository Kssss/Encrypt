//
//  LYTEncryptTool.m
//  RSA_Data
//
//  Created by 谭建中 on 6/6/17.
//  Copyright © 2017年 谭建中. All rights reserved.
//

#import "LYTEncryptTool.h"
#import "LYTAES.h"
#import "LYTRSAUtill.h"

@implementation LYTEncryptTool
+ (NSString *)AESEncryptStr:(NSString *)str password:(NSString *)password{
    return  [LYTAES encrypt:str password:password];
}
+ (NSData *)AESEncryptData:(NSData *)data password:(NSString *)password{
    return [LYTAES encryptData:data password:password];
}

+ (NSString *)RSAEncryptString:(NSString *)str publicKey:(NSString *)pubKey
{
    return [LYTRSAUtill encryptString:str publicKey:pubKey];
}
+ (NSData *)RSAEncryptData:(NSData *)data publicKey:(NSString *)pubKey{
    return [LYTRSAUtill encryptData:data publicKey:pubKey];
}




+ (NSString *)AESDecryptStr:(NSString *)base64EncodedString password:(NSString *)password{
    return [LYTAES decrypt:base64EncodedString password:password];
}
+ (NSData *)AESDecryptData:(NSData *)data password:(NSString *)password{
    return [LYTAES decryptData:data password:password];
}

+ (NSString *)RSADecryptString:(NSString *)str privateKey:(NSString *)privKey{
    return [LYTRSAUtill decryptString:str privateKey:privKey];
}
+ (NSData *)RSADecryptData:(NSData *)data privateKey:(NSString *)privKey
{
    return [LYTRSAUtill decryptData:data privateKey:privKey];
}


@end
