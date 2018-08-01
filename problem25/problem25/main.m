//
//  main.m
//  problem25
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindPath.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BTreeNode *root1 =  [BTreeNode new];
        BTreeNode *node1 = [BTreeNode new];
        BTreeNode *node2 = [BTreeNode new];
        root1.leftChild = node1;
        root1.rightChild = node2;
        root1.data = 1;
        node1.data = 2;
        node2.data = 2;
        
        [FindPath findPath:root1 target:3];
        
    }
    return 0;
}
