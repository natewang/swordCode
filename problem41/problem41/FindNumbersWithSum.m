//
//  FindNumbersWithSum.m
//  problem41
//
//  Created by wangnate on 2018/8/7.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "FindNumbersWithSum.h"

@implementation FindNumbersWithSum

+ (NSArray *)find:(NSArray <NSNumber *> *)a n:(int)n {
    
    if (!a) return nil;
    
    int low = 0;
    int high = a.count - 1;
    
    while (low < high) {
        
        int curSum = a[low].intValue + a[high].intValue;
        if (curSum == n) {
            return @[a[low], a[high]];
        } else {
            if (curSum > n) {
                high--;
            } else {
                low ++;
            }
        }
    }
    return nil;
}

@end
