//
//  Find.m
//  problem3
//
//  Created by wangnate on 2018/3/21.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "Find.h"

@implementation Find

+ (BOOL)find:(NSArray<NSArray *> *)a target:(NSInteger)target
{
    NSInteger row = 0;
    NSInteger column = a.firstObject.count  - 1;
    
    while (row < a.count && column >=0) {
        
        NSNumber *current = a[row][column];
        if (current.integerValue == target) {
            
            return YES;
        } else if (current.integerValue > target) {
            
            column--;
        } else {
            row++;
        }
    }
    
    return NO;
}



@end
