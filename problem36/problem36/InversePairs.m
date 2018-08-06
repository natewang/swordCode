//
//  InversePairs.m
//  problem36
//
//  Created by wangnate on 2018/8/6.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "InversePairs.h"

@implementation InversePairs

+ (NSNumber *)getInversePairs:(NSArray <NSNumber *> *)data {
    
    if (!data) return nil;
    
    NSMutableArray <NSNumber *> *copy = data.mutableCopy;
    data = data.mutableCopy;
    return @([self core:data copy:copy start:0 end:data.count - 1]);
}

+ (int)core:(NSMutableArray *)data copy:(NSMutableArray *)copy start:(int)start end:(int)end {
    
    if (start == end) {
        
        copy[start] = data[start];
        return 0;
    }
    
    int len = (end -start) / 2;
    
    int left = [self core:copy copy:data start:start end:start + len];
    int right = [self core:copy copy:data start:start + len + 1 end:end];
    
    int i= start +len, j = end, k = end,count = 0;
    
    while (i >= start && j >= start + len + 1) {
        if (data[i] > data[j]) {
            copy[k--] = data[i--];
            count += j - start -len;
        } else {
            copy[k--] = data[j--];
        }
    }
    
    for (; i >= start; i--) {
        copy[k--] = data[i];
    }
    
    for (; j >= start + len + 1; j--) {
        copy[k--] = data[j];
    }

    return left + right + count;
    
}


@end
