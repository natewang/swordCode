//
//  main.m
//  problem23
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "levelTraverse.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        BTreeNode *root1 = [BTreeNode new];
        BTreeNode *node1 = [BTreeNode new];
        BTreeNode *node2 = [BTreeNode new];
        BTreeNode *node3 = [BTreeNode new];
        BTreeNode *node4 = [BTreeNode new];
        BTreeNode *node5 = [BTreeNode new];
        BTreeNode *node6 = [BTreeNode new];
        root1.leftChild = node1;
        root1.rightChild = node2;
        node1.leftChild = node3;
        node1.rightChild = node4;
        node4.leftChild = node5;
        node4.rightChild = node6;
        root1.data = 8;
        node1.data = 6;
        node2.data = 10;
        node3.data = 5;
        node4.data = 7;
        node5.data = 9;
        node6.data = 11;
        [levelTraverse levelTraverse:root1];
    }
    return 0;
}
