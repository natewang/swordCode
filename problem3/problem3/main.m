//
//  main.m
//  problem3
//
//  Created by wangnate on 2018/3/21.
//  Copyright © 2018年 wangnate. All rights reserved.
//

//在一个二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。

#import <Foundation/Foundation.h>
#import "Find.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *a = [NSMutableArray array];
        [a addObject:@[@1,@2, @8, @9]];
        [a addObject:@[@2,@4, @9, @12]];
        [a addObject:@[@4,@7, @10, @13]];
        [a addObject:@[@6,@8, @11, @15]];

        BOOL result = [Find find:[a copy] target:7];
        NSLog(@"result-->%ld",result);
    }
    return 0;
}
