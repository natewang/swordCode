//
//  main.m
//  problem24
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VerifySequenceOfBST.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSArray *a = @[@5,@7,@6,@9,@11,@10,@8];
        NSArray *b = @[@7,@2,@3,@4];
        
        NSLog(@"%hhd", [VerifySequenceOfBST verifySequenceOfBST:a]);
        NSLog(@"%hhd", [VerifySequenceOfBST verifySequenceOfBST:b]);

    }
    return 0;
}
