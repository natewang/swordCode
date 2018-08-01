//
//  IsPopOrder.m
//  problem22
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "IsPopOrder.h"
#import "StackForNSObject.h"

@implementation IsPopOrder

+ (BOOL)IsPopOrder:(NSArray <NSNumber *> *)pushA popA:(NSArray <NSNumber *> *)popA {
    
    if (!pushA || !popA || pushA.count != popA.count) {
        return NO;
    }
    
    StackForNSObject *stack = [StackForNSObject new];
    int popIndex = 0;
    for (int i = 0; i < pushA.count; i++) {
        
        [stack push:pushA[i]];
        while (!stack.isEmpty &&[stack.topElemet isEqualToNumber:popA[popIndex]]) {
            
            [stack popTopElement];
            popIndex++;
            
        }
    }
    
    return stack.isEmpty;
    
    
    
}

@end
