//
//  main.m
//  problem44
//
//  Created by wangnate on 2018/8/7.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SortPoker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%d", [SortPoker isContinuous:@[@1,@2,@4,@0,@0]]);
    }
    return 0;
}
