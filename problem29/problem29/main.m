//
//  main.m
//  problem29
//
//  Created by wangnate on 2018/7/27.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MoreThanHalfNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%@", [MoreThanHalfNumber findNum:@[@1,@2,@2,@2,@2,@3]]);
    }
    return 0;
}
