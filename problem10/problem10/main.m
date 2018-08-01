//
//  main.m
//  problem10
//
//  Created by wangnate on 2018/6/12.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberOf1.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"%ld", [NumberOf1 numberOf1:3]);
        NSLog(@"%ld", [NumberOf1 numberOf1_2:3]);

    }
    return 0;
}
