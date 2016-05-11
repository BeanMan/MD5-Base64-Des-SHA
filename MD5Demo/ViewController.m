//
//  ViewController.m
//  MD5Demo
//
//  Created by bean on 16/2/28.
//  Copyright © 2016年 com.xile. All rights reserved.
//

#import "ViewController.h"
#import "MD5.h"
#import "Base64.h"
@interface ViewController ()
{
    NSString * md5Str;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    md5Str = @"15576760444";
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)click
{
//    md5Str = [MD5 md5:md5Str];
//    md5Str = [Base64 base64StringFromText:md5Str];
    md5Str = [Base64 textFromBase64String:@"MTU1NzY3NjA0NDQ="];
    NSLog(@"%@ %d",md5Str,md5Str.length);
}

@end
