//
//  PrintMinNumber.m
//  problem33
//
//  Created by wangnate on 2018/8/5.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "PrintMinNumber.h"

@implementation PrintMinNumber

+ (NSString *)print:(NSArray<NSNumber *> *)array {
    
    if (!array) return nil;
    
    NSArray *targetArr =
    [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber * obj1, NSNumber *obj2) {
        
        NSNumber *num1 = @([NSString stringWithFormat:@"%@%@", obj1, obj2].integerValue);
        NSNumber *num2 = @([NSString stringWithFormat:@"%@%@", obj2, obj1].integerValue);
        return [num1 compare:num2];
    }];
    
    __block NSString *str = @"";
    [targetArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        str = [str stringByAppendingString:[NSString stringWithFormat:@"%@", obj]];
    }];    
    return str;
}

@end
