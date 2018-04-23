//
//  main.m
//  problem4
//
//  Created by wangnate on 2018/3/21.
//  Copyright © 2018年 wangnate. All rights reserved.
//

//请实现一个函数，将一个字符串中的空格替换成“%20”。例如，当字符串为We Are Happy.则经过替换之后的字符串为We%20Are%20Happy。

#import <Foundation/Foundation.h>
#import "ReplaceBlank.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%@", [ReplaceBlank replaceBlank:@"We Are Happy"]);
        
    }
    return 0;
}
