//
//  main.m
//  problem31
//
//  Created by wangnate on 2018/7/28.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindGreatestSum.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%@", [FindGreatestSum findGreatestSumOfSubArrayWithDP:@[@1,@2,@3,@4]]);
    }
    return 0;
}
