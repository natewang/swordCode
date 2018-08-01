//
//  VerifySequenceOfBST.m
//  problem24
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "VerifySequenceOfBST.h"

@implementation VerifySequenceOfBST

+ (BOOL)verifySequenceOfBST:(NSArray <NSNumber *>*)sequence {
    
    if (!sequence) {
        return NO;
    }
    
    int root = sequence.lastObject.intValue;
    int i = 0;
    for (; i < sequence.count - 1; i++) {
        if (sequence[i].intValue > root) {
            break;
        }
    }
    
    int j = i;
    for (; j < sequence.count - 1; j++) {
        if (sequence[j].intValue < root) {
            break;
        }
    }
    
    BOOL left = YES;
    if (i > 0) {
        
        left = [VerifySequenceOfBST verifySequenceOfBST:[sequence subarrayWithRange:NSMakeRange(0, i)]];
    }
    
    BOOL right = YES;
    if(i < sequence.count - 1) {
        
        right = [VerifySequenceOfBST verifySequenceOfBST:[sequence subarrayWithRange:NSMakeRange(i, sequence.count - 1 - i)]];
    }
    
    return left&&right;
    
}

@end
