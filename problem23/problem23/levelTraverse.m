//
//  levelTraverse.m
//  problem23
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "levelTraverse.h"

@implementation levelTraverse

+ (void)levelTraverse:(BTreeNode *)root {
    
    if (!root) {
        return;
    }
    
    NSMutableArray *marr = [NSMutableArray array];
    [marr addObject:root];
    while (marr.count) {
        
        BTreeNode *node = marr.firstObject;
        [marr removeObjectAtIndex:0];
        NSLog(@"%ld", node.data);
        
        if(node.leftChild) {
            [marr addObject:node.leftChild];
        }
        
        if (node.rightChild) {
            [marr addObject:node.rightChild];
        }
        
    }
    
}

@end
