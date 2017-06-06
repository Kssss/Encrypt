//
//  LYTEncryptTool.h
//  RSA_Data
//
//  Created by 谭建中 on 6/6/17.
//  Copyright © 2017年 谭建中. All rights reserved.
//
#define RSA_Public_key         @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCxuWhp6EgQfrrSBtxlBwbU35lhjC67X0Y1KrhqolIfYo3/yWV1eryYVUhk5xeHsbKg9RHD9TpIZRUWIW5a8MrMBcgr1A/dgIHi2EM28drH4JRTmkTLVHReggFbb046k0ISpLW3XVW0jHB3/z3S1c/NT9V63SQK6WJ65/YP5xISNQIDAQAB"
//私钥
#define RSA_Privite_key        @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALG5aGnoSBB+utIG3GUHBtTfmWGMLrtfRjUquGqiUh9ijf/JZXV6vJhVSGTnF4exsqD1EcP1OkhlFRYhblrwyswFyCvUD92AgeLYQzbx2sfglFOaRMtUdF6CAVtvTjqTQhKktbddVbSMcHf/PdLVz81P1XrdJArpYnrn9g/nEhI1AgMBAAECgYBEbsMAvLs69sFS6+djU1BTGYIC6Kp55ZawFDIMhVIf2aAZ1N+nW8pQ0c3dZIpP6qGAjrz3em6lv55d9iN7Cura/g57Rk4S3SRo5u4hWUd16NeIVP+HfreKIgZ6jwKQTfXt2KzDuIAHudvwT2UJBePgIIDQoKMEq4khtFiRGS1UgQJBAN/KpSOiRiGup8h/Iqespwfxyrqn5/4iyw1tpJCWzHddP7nJGpYmOL+ELWs/pReYclAOqH9ZIzOT2K8ZLt6yBOECQQDLTXZowK8wFgMudAE5TStC/zl3TAKMu/Gu5wlXSMoa+nwSy/FSIQZyypGeHR2X8QhbZ1Qz+uBCJm7gEGOWMWPVAkEAp5ajsFm3V0XqE/VRSGu88fAaN0nCK8h2cunm0Ph8ye6k6EY3iLW6zYD4WlZhFZhuEpHHkQZ5nAhdvlKHjPGXQQJAYOtF1rx9B/SGgb/F0ZZrWF4p/ChdUtBKcHIt7tGBoAjn22IkYl3iIBlYAEOrFwNOU5zX9IvWG1MNKn5Fq5VSHQJBAJG5xSY0IKzXWDsGnPIa9XlSTv1zl7RCGNDo7O1zh+5J/kjDpU9M2fIXEtzvGYHiOffz9FBh5ka69JJNFWoWAiw="


#import <Foundation/Foundation.h>

@interface LYTEncryptTool : NSObject
#pragma mark - 加密
/**
 AES加密
 @param password 密码
 */
+ (NSString *)AESEncryptStr:(NSString *)str password:(NSString *)password;
+ (NSData *)AESEncryptData:(NSData *)data password:(NSString *)password;


/**
 RSA加密
 @param pubKey 公钥
 */
+ (NSString *)RSAEncryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSData *)RSAEncryptData:(NSData *)data publicKey:(NSString *)pubKey;


#pragma mark - 解密
/**
 AES解密
 @param password 密码
 */
+ (NSString *)AESDecryptStr:(NSString *)base64EncodedString password:(NSString *)password;
+ (NSData *)AESDecryptData:(NSData *)data password:(NSString *)password;

/**
 RSA解密
 @param str 密文
 @param privKey 私钥
 @return 明文
 */
+ (NSString *)RSADecryptString:(NSString *)str privateKey:(NSString *)privKey;
+ (NSData *)RSADecryptData:(NSData *)data privateKey:(NSString *)privKey;

@end
