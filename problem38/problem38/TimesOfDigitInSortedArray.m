//
//  TimesOfDigitInSortedArray.m
//  problem38
//
//  Created by wangnate on 2018/8/6.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "TimesOfDigitInSortedArray.h"

@implementation TimesOfDigitInSortedArray

+ (int )getNumberOfK:(NSArray <NSNumber *> *)a k:(int)k {
    
    
    if (!a) return -1;
    
    if(a.count == 1) {
        if (a[0].intValue == k) {
            return 1;
        } else {
            return 0;
        }
    }
    int res = 0;

    
    if (k < a[a.count/2].intValue) {
        res += [self getNumberOfK:[a subarrayWithRange:NSMakeRange(0, a.count / 2)] k:k];
    } else if (k > a[a.count/2].integerValue) {
        res += [self getNumberOfK:[a subarrayWithRange:NSMakeRange(a.count / 2, a.count)] k:k];
    } else {
        res += [self getCount:a index:a.count / 2];
    }
    
    return res;
}

+ (int)getCount:(NSArray<NSNumber *> *)a index:(int)index {
    
    int k = a[index].intValue;
    int res = 0;
    
    for (int i = index; i < a.count; i++) {
        if (a[i].intValue == k) {
            res++;
        } else {
            break;
        }
    }
    
    for (int i = index - 1; i >= 0; i--) {
        if (a[i].intValue == k) {
            res++;
        } else {
            break;
        }
    }
    
    return res;
    
    
}


@end
