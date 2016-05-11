//
//  Des.h
//  MD5Demo
//
//  Created by bean on 16/2/28.
//  Copyright © 2016年 com.xile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Des : NSObject
/**DES加密*/
+ (NSData *)DESEncrypt:(NSData *)data WithKey:(NSString *)key;
/**DES解密*/
+ (NSData *)DESDecrypt:(NSData *)data WithKey:(NSString *)key;
@end
