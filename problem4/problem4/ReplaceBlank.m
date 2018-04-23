//
//  ReplaceBlank.m
//  problem4
//
//  Created by wangnate on 2018/3/21.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "ReplaceBlank.h"

@implementation ReplaceBlank

+ (NSString *)replaceBlank:(NSString *)str
{
    return [str stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
}


@end
