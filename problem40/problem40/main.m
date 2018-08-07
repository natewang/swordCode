//
//  main.m
//  problem40
//
//  Created by wangnate on 2018/8/7.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppearOnce.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%@", [AppearOnce find:@[@4,@6,@1,@1,@1,@1]]);
    }
    return 0;
}
