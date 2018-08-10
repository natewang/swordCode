//
//  main.m
//  problem46
//
//  Created by wangnate on 2018/8/10.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>

int sum = 0;

BOOL summation(int n)
{
    sum += n;
    return n-1 && summation(n-1);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
