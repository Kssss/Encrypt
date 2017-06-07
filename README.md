# EncryptTool

## 这个工具用来给数据加密。目前支持RSA／AES加密方式。RSA非对称加密，AES对称加密。 目前测试RSA加密解密速度耗时比较大。AES则速度很快。推荐AES方式。RSA加密需要自行申请私钥和公钥对。参见： http://blog.sina.com.cn/s/blog_12c8ae0d80102vy21.html
##接口
```
#pragma mark - 加密
/**
AES加密
@param password 密码
*/
+ (NSString *)AESEncryptStr:(NSString *)str password:(NSString *)password;
```
```
+ (NSData *)AESEncryptData:(NSData *)data password:(NSString *)password;

```
```
/**
RSA加密
@param pubKey 公钥
*/
+ (NSString *)RSAEncryptString:(NSString *)str publicKey:(NSString *)pubKey;
```
```
+ (NSData *)RSAEncryptData:(NSData *)data publicKey:(NSString *)pubKey;
```
```
#pragma mark - 解密
/**
AES解密
@param password 密码
*/
+ (NSString *)AESDecryptStr:(NSString *)base64EncodedString password:(NSString *)password;
```
```
+ (NSData *)AESDecryptData:(NSData *)data password:(NSString *)password;
```
```
/**
RSA解密
@param str 密文
@param privKey 私钥
@return 明文
*/
+ (NSString *)RSADecryptString:(NSString *)str privateKey:(NSString *)privKey;
```
```
+ (NSData *)RSADecryptData:(NSData *)data privateKey:(NSString *)privKey;

```
![](code.png)
![](result.png)
