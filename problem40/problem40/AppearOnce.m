//
//  AppearOnce.m
//  problem40
//
//  Created by wangnate on 2018/8/7.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "AppearOnce.h"

@implementation AppearOnce

+ (NSArray *)find:(NSArray<NSNumber *> *)a {
    
    if (!a) return nil;
    
    int number = 0;
    for (NSNumber *num in a) {
        number ^= num.intValue;
    }
    int index = [self findFirstBitIs1:number];
    int number1 = 0, number2 = 0;
    for (NSNumber *num in a) {
        
        if ([self isBit1:num.intValue indexBit:index]) {
            number1 ^= num.intValue;
        } else {
            number2 ^= num.intValue;
        }
    }

    return @[@(number1), @(number2)];
}

+ (int)findFirstBitIs1:(int)number {
    
    int indexBit = 0;
    while ((number & 1) == 0) {
        number >>= 1;
        ++indexBit;
    }
    
    return indexBit;
}

+ (BOOL)isBit1:(int)number indexBit:(int)indexBit {
    
    number >>= indexBit;
    return (number & 1) == 1;
}







@end
