//
//  SortPoker.m
//  problem44
//
//  Created by wangnate on 2018/8/10.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "SortPoker.h"

@implementation SortPoker

+ (BOOL)isContinuous:(NSArray <NSNumber *> *)a {
    
    if (!a || a.count != 5) return NO;
    
    a = [a sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    
    int numberOfZero = 0;
    int numberOfGap = 0;
    
    // 统计数组中0的个数
    for (int i = 0; i < a.count; i++) {
        if (a[i].intValue == 0) {
            numberOfZero++;
        } else {
            break;
        }
    }
    
    // 统计数组中的间隔数目
    int small = numberOfZero;
    int big = small + 1;
    while (big < a.count) {
        if (a[small] == a[big]) {
            return NO;
        }
        numberOfGap += (a[big].intValue - a[small].intValue - 1);
        small = big;
        big++;
    }
    
    return (numberOfGap > numberOfZero) ? NO : YES;
}

@end
