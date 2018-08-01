//
//  StackWithMin.m
//  problem21
//
//  Created by wangnate on 2018/7/25.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "StackWithMin.h"
#import "StackForNSObject.h"

@interface StackWithMin()

@property (nonatomic, strong) StackForNSObject *dataStack;
@property (nonatomic, strong) StackForNSObject *minStack;


@end

@implementation StackWithMin

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        self.dataStack = [[StackForNSObject alloc] init];
        self.minStack = [[StackForNSObject alloc] init];

    }
    return self;
}


- (void)push:(id)item {
    
    [self.dataStack push:item];
    if (self.minStack.stackLength == 0 || [item intValue] <=
        [self.minStack.topElemet intValue]) {
        
        [self.minStack push:item];
        
    } else {
        [self.minStack push:self.minStack.topElemet];
    }
}

- (id)pop {
    
    [self.minStack popTopElement];
    return [self.dataStack popTopElement];
}

- (id)min {
    
    return [self.minStack topElemet];
}



@end
