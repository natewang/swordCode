//
//  main.m
//  problem6
//
//  Created by wangnate on 2018/3/23.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConstructBTree.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *pre = @[@1,@2,@4,@7,@3,@5,@6,@8];
        NSArray *inl = @[@4,@7,@2,@1,@5,@3,@8,@6];
        
        BTreeNode *node = [ConstructBTree construct:pre inl:inl];
        
    }
    return 0;
}
