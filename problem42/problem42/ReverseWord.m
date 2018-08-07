//
//  ReverseWord.m
//  problem42
//
//  Created by wangnate on 2018/8/7.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "ReverseWord.h"

@implementation ReverseWord

+ (NSString *)reverse:(NSString *)s {
    
    if (!s) return nil;
    
    NSArray *arr = [s componentsSeparatedByString:@" "];
    arr = [[arr reverseObjectEnumerator] allObjects];
    return [arr componentsJoinedByString:@" "];
}


@end
