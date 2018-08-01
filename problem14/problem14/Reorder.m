//
//  Reorder.m
//  problem14
//
//  Created by wangnate on 2018/6/13.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "Reorder.h"

@implementation Reorder

+ (NSArray *)order:(NSArray *)arr {
    
    NSMutableArray *mArr = arr.mutableCopy;
    NSInteger i = 0, j = mArr.count  - 1;
    
    while (i < j) {
        
        BOOL isIEven = [mArr[i] integerValue] % 2 == 0;
        BOOL isJEvent = [mArr[j] integerValue] % 2 == 0;
        
        if (isIEven && isJEvent) {
            j--;
        } else if (isIEven && !isJEvent) {
            
            id dataI = mArr[i];
            mArr[i] = mArr[j];
            mArr[j] = dataI;
        } else if (!isIEven && isJEvent) {
            i++;
        } else if (!isIEven && !isJEvent) {
            i++;
        }
    }
    
    return mArr.copy;
    
}

@end
