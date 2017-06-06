//
//  ViewController.m
//  RSA_Data
//
//  Created by 谭建中 on 5/6/17.
//  Copyright © 2017年 谭建中. All rights reserved.
//

#import "ViewController.h"
#import "LYTEncryptTool.h"
@interface ViewController ()

@end
static NSString *encrypt1;
static NSString *encrypt2;
static NSData *data1;
static NSData *data2;

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *origalStr = @"1234";
    NSDictionary *dic = @{@"name": @"Jerry", @"age": @"24"};
    NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    NSLog(@"明文str = %@\n data = %@\n",origalStr,data);
    encrypt1 = [LYTEncryptTool RSAEncryptString:origalStr publicKey:RSA_Public_key];
    data1 = [LYTEncryptTool RSAEncryptData:data publicKey:RSA_Public_key];
    encrypt2 = [LYTEncryptTool AESEncryptStr:origalStr password:@"123456"];
    data2 = [LYTEncryptTool AESEncryptData:data password:@"123456"];
    NSLog(@"加密后的密文\n--%@\n---%@\n---%@\n----%@\n",encrypt1,encrypt2,data1,data2);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *cryNew1 = [LYTEncryptTool RSADecryptString:encrypt1 privateKey:RSA_Privite_key];
    NSData *dataNew1 = [LYTEncryptTool RSADecryptData:data1 privateKey:RSA_Privite_key];
   NSString * cryNew2 = [LYTEncryptTool AESDecryptStr:encrypt2 password:@"123456"];
    NSData *dataNew2 = [LYTEncryptTool AESDecryptData:data2 password:@"123456"];
    NSLog(@"解密后的密文\n--%@\n---%@\n---%@\n----%@\n",cryNew1,cryNew2,dataNew1,dataNew2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
