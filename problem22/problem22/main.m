//
//  main.m
//  problem22
//
//  Created by wangnate on 2018/7/25.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IsPopOrder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *pushA = @[@1,@2,@3,@4,@5];
        NSArray *popA = @[@4,@3,@5,@2,@1];
        
        NSLog(@"%hhd", [IsPopOrder IsPopOrder:pushA popA:popA]);
    }
    return 0;
}
