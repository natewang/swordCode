//
//  NumberOf1.m
//  problem10
//
//  Created by wangnate on 2018/6/12.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "NumberOf1.h"

@implementation NumberOf1

+ (NSInteger)numberOf1:(NSInteger)n {
    
    NSInteger count = 0;
    while (n != 0) {
        
        if (n & 1) {
            
            count++;
        }
        
        n = n >> 1;
    }
        
    return count;
}

+ (NSInteger)numberOf1_2:(NSInteger)n {

    NSInteger count = 0;
    while (n != 0) {
        
        count ++;
        n = (n - 1) & n;
        
    }
    return count;
}
@end
