//
//  MoreThanHalfNumber.m
//  problem29
//
//  Created by wangnate on 2018/7/27.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "MoreThanHalfNumber.h"

@implementation MoreThanHalfNumber

+ (NSNumber *)findNum:(NSArray <NSNumber *>*)a {
    
    if (!a) return nil;
 
    int res = a.firstObject.intValue;
    int count = 1;
    
    for (int i = 1; i < a.count; i++) {
        
        if (count == 0) {
            res = a[i].intValue;
            count++;
        } else if (res == a[i].intValue) {
            count++;
        } else {
            count--;
        }
    }
    
    int times = 0;
    for (int i = 0; i < a.count; i++) {
        
        if (a[i].intValue == res) {
            times++;
        }
    }
    
    if (times > a.count / 2) {
        return @(res);
    } else {
        return nil;
    }
}

@end
