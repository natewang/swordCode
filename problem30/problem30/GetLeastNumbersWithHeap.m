//
//  GetLeastNumbersWithHeap.m
//  problem30
//
//  Created by wangnate on 2018/7/28.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "GetLeastNumbersWithHeap.h"

@implementation GetLeastNumbersWithHeap

+ (void)getLeastNumbers:(NSArray <NSNumber *> *)a limit:(int)k {
    
    
    if (!a || k <= 0 || k > a.count) return;
    NSMutableArray *kArr= [a subarrayWithRange:NSMakeRange(0, k)].mutableCopy;
    [self buildMaxHeap:kArr];

    for (int i = 0; i < kArr.count; i++) {
        if (a[i] < kArr[0]) {
            kArr[0] = a[i];
            [self adjustHeap:kArr parent:0];
        }
    }
    
    NSLog(@"%@", kArr);
}

+ (void)buildMaxHeap:(NSMutableArray <NSNumber *>*)a {
    
    for (int i = a.count / 2; i>=0; i--) {
        [self adjustHeap:a parent:i];
    }
}

+ (void)adjustHeap:(NSMutableArray <NSNumber *>*)a parent:(int)parent {
    
    int left = 2 * parent + 1;
    int right = 2 * parent + 2;
    int largest = parent;
    if (left < a.count && a[left] > a[largest]) {
        largest = left;
    }
    if (right < a.count && a[right] > a[largest]) {
        largest = right;
    }
    if (largest != parent) {
        int temp = [a[parent] intValue];
        a[parent] = a[largest];
        a[largest] = @(temp);
        [self adjustHeap:a parent:largest];
    }
    
    
    
    
}


@end
