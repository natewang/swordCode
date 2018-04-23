//
//  RotateArray.m
//  problem8
//
//  Created by wangnate on 2018/3/27.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "RotateArray.h"

@implementation RotateArray

+ (NSNumber *)min:(NSArray<NSNumber *> *)arr
{
    if (!arr || !arr.count) {
        return nil;
    }
    
    NSInteger headIdx = 0;
    NSInteger tailIdx = arr.count - 1;
    NSInteger midIdx = headIdx;
    
    while (arr[headIdx] >= arr[tailIdx]) {
        
        if (headIdx + 1 == tailIdx) {
            return arr[tailIdx];
            break;
        }
        
        midIdx = (headIdx + tailIdx) / 2;
        
        if (arr[headIdx] == arr[tailIdx]
            && arr[tailIdx] == arr[midIdx]) {
            return [self MinOrder:arr];
        }
        
        if (arr[midIdx] >= arr[headIdx]) {
            headIdx = midIdx;
        } else if (arr[midIdx] <= arr[tailIdx]) {
            tailIdx = midIdx;
        }
    }
    
    return nil;
}

+ (NSNumber *)MinOrder:(NSArray <NSNumber *>*)arr {
    
    NSNumber *result = arr.firstObject;
    for (NSInteger idx = 1; idx < arr.count; idx++) {
        
        if (result >= arr[idx]) {
            result = arr[idx];
        }
    }
    return result;
}


@end
