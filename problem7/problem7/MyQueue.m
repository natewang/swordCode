//
//  MyQueue.m
//  problem7
//
//  Created by wangnate on 2018/3/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "MyQueue.h"

@interface  MyQueue()

@property (nonatomic ,strong) StackForNSObject *stack1;
@property (nonatomic ,strong) StackForNSObject *stack2;


@end

@implementation MyQueue


- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _stack1 = [StackForNSObject new];
        _stack2 = [StackForNSObject new];
        
    }
    return self;
}

- (void)push:(NSNumber *)num
{
    [self.stack1 push:num];
}

- (NSNumber *)pop
{    
    if ([self.stack2 isEmpty]) {
        
        while (!self.stack1.isEmpty) {
            [self.stack2 push:[self.stack1 popTopElement]];
        }
    }
    
   return [self.stack2 popTopElement];
}



@end
