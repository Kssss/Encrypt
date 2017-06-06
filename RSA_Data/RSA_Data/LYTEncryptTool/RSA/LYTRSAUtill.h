//
//  RSAUtill.h
//  RSA_Data
//
//  Created by 谭建中 on 5/6/17.
//  Copyright © 2017年 谭建中. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LYTRSAUtill : NSObject
//加密str
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;
//加密DATA
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;


/**
 解密
 */
+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;
@end
