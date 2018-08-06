//
//  main.m
//  problem38
//
//  Created by wangnate on 2018/8/6.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TimesOfDigitInSortedArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%d", [TimesOfDigitInSortedArray getNumberOfK:@[@1,@1,@2,@3] k:1]);
    }
    return 0;
}
