//
//  ConstructBTree.m
//  problem6
//
//  Created by wangnate on 2018/3/23.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "ConstructBTree.h"

@implementation ConstructBTree

+ (BTreeNode *)construct:(NSArray *)pre inl:(NSArray *)inl
{
    
    return [self constructCore:0 endPre:pre.count - 1 pre:pre startIn:0 endIn:inl.count - 1 inl:inl];
}

+ (BTreeNode *)constructCore:(NSUInteger)startPro endPre:(NSUInteger)endPre pre:(NSArray *)pre startIn:(NSUInteger )startIn endIn:(NSUInteger)endIn inl:(NSArray *)inl {
    
    NSInteger rootData = [pre[startPro] integerValue];
    BTreeNode *root = [BTreeNode new];
    root.data = rootData;
    
    if (startPro == endPre) {
        
        if (startIn == endIn && pre[startPro] == inl[startIn]) {
            return root;
        }
    }
    
    NSUInteger rootInOrder = startIn;
    while (rootInOrder <= endIn && [inl[rootInOrder] integerValue] != rootData) {
        
        rootInOrder++;
    }
    
    NSInteger leftLength = rootInOrder - startIn;
    NSInteger leftPreOrderEnd = startPro + leftLength;
    if (leftLength > 0) {
        
        root.leftChild = [self constructCore:startPro+1 endPre:leftPreOrderEnd pre:pre startIn:startIn endIn:rootInOrder - 1 inl:inl];
    }
    
    if (leftLength < endPre - startPro) {
        
        root.rightChild = [self constructCore:leftPreOrderEnd + 1 endPre:endPre pre:pre startIn:rootInOrder + 1 endIn:endIn inl:inl];
    }
    
    return root;
}



@end
