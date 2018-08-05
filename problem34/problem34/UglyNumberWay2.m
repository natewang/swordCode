//
//  UglyNumberWay2.m
//  problem34
//
//  Created by wangnate on 2018/8/5.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "UglyNumberWay2.h"

@implementation UglyNumberWay2

+ (NSNumber *)getUglyNumber:(NSInteger )n {
    
    if (n < 0) return nil;
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObject:@1];
    
    NSInteger m2 = 0, m3= 0, m5 = 0;
    for (NSInteger idx = 1; idx < n; idx++) {
        
        NSInteger min = MIN(MIN([arr[m2] integerValue] * 2, [arr[m3] integerValue] * 3), MIN([arr[m3] integerValue] *3, [arr[m5] integerValue] * 5));
        
        [arr addObject:@(min)];
        
        while ([arr[m2] integerValue] * 2  <= min ) {
            m2++;
        }
        
        while ([arr[m3] integerValue] * 3 <= min) {
            m3++;
        }
        
        while ([arr[m5] integerValue] * 5 <= min)  {
            m5++;
        }
        
    }
    return arr.lastObject;
}

@end
