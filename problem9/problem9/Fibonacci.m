//
//  Fibonacci.m
//  problem9
//
//  Created by wangnate on 2018/5/29.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci

+ (NSInteger)fibonacci:(NSInteger)n
{
    NSMutableArray *mArr = [NSMutableArray array];
    [mArr addObject:@1];
    [mArr addObject:@1];
    if (n < 2) {
        
        return [mArr[n -1] integerValue];
    }
    
    NSInteger fn = 0;
    NSInteger f1 = 1;
    NSInteger f2 = 1;

    for (NSInteger idx = 2; idx < n; idx++) {
        
        fn = f1 + f2;
        f1= f2;
        f2 = fn;
    }
    
    return fn;
}

@end
