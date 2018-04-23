//
//  main.m
//  problem7
//
//  Created by wangnate on 2018/3/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//
//用两个栈来实现一个队列，完成队列的Push和Pop操作。 队列中的元素为int类型。

#import <Foundation/Foundation.h>
#import "MyQueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MyQueue *q = [MyQueue new];
        [q push:@1];
        [q push:@2];
        NSLog(@"%@", [q pop]);
    }
    return 0;
}
