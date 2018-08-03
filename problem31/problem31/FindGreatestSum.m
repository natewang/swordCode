//
//  FindGreatestSum.m
//  problem31
//
//  Created by nate on 2018/8/3.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "FindGreatestSum.h"

@implementation FindGreatestSum

+ (NSNumber *)findGreatestSumOfSubArrayWithDP:(NSArray <NSNumber *> *)array {
    
    if (!array) return nil;
    
    NSInteger res = array.firstObject.integerValue;
    NSInteger sum = res;
    
    for (int i = 1; i < array.count; i++) {
        
        NSInteger value = array[i].integerValue;
        sum = sum < 0 ? value : (sum + value);
        if (sum > res) {
            res = sum;
        }
        
    }
    
    return @(sum);
}

@end
