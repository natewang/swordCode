//
//  Convert.m
//  problem27
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "Convert.h"

@implementation Convert

static BTreeNode *lastNode;

+ (BTreeNode *)convert:(BTreeNode *)root {
    
    if (!root) return nil;
    
    [Convert convertNode:root];
    while (lastNode && lastNode.leftChild) {
        lastNode = lastNode.leftChild;
    }
    
    return lastNode;
}

+ (void)convertNode:(BTreeNode *)root {
    
    if (!root) return;
    
    BTreeNode *current = root;
    
    if (current.leftChild) {
        
        [Convert convertNode:current.leftChild];
    }
    
    current.leftChild = lastNode;
    if (lastNode) {
        
        lastNode.rightChild = current;
    }
    
    lastNode = current;
    if (current.rightChild) {
        
        [Convert convertNode:current.rightChild];
    }
    
    
    
    
    
    
    
    
}


@end
