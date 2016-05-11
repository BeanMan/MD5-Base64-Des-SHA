//
//  SHA.m
//  MD5Demo
//
//  Created by bean on 16/2/28.
//  Copyright © 2016年 com.xile. All rights reserved.
//

#import "SHA.h"
//#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonDigest.h>//SHA加密所需
//引入IOS自带密码库

@implementation SHA
+ (NSString*) sha1:(NSString*)sha
{
    
    
    const char *cstr = [sha cStringUsingEncoding:NSUTF8StringEncoding];
    
    NSData *data = [NSData dataWithBytes:cstr length:sha.length];
    
    //    //使用对应的CC_SHA1,CC_SHA256,CC_SHA384,CC_SHA512的长度分别是20,32,48,64
        uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    //    //使用对应的CC_SHA256,CC_SHA384,CC_SHA512
        CC_SHA1(data.bytes, data.length, digest);
    
    NSMutableString* result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
    {
        
        [result appendFormat:@"%02x", digest[i]];
        
    }
    return result;
    
    
}
@end
