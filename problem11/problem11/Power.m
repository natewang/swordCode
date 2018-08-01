//
//  Power.m
//  problem11
//
//  Created by wangnate on 2018/6/12.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "Power.h"

@implementation Power

+ (double)power:(double)base exponent:(int)exponent {
    
    if (base == 0) {
        return 0;
    }
    
    if (exponent == 0) {
        
        return 1;
    }
    
    if (exponent < 0) {
        base = 1.0 / base;
        exponent = -exponent;
    }
    
    double result = base;
    for (NSInteger idx = 0; idx < exponent; idx++) {
        
        result *= base;
    }
    
    return result;
}



@end
