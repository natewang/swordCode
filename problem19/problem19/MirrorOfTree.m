//
//  MirrorOfTree.m
//  problem19
//
//  Created by wangnate on 2018/6/25.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "MirrorOfTree.h"
#import "Tree.h"

@implementation MirrorOfTree

+ (void)mirrorOfTree:(Tree *)pNode {
    
    if (!pNode) return;
    
    if (!pNode.leftTree && !pNode.rightTree) {
        return;
    }
    
    Tree *lNode = pNode.leftTree;
    pNode.leftTree = pNode.rightTree;
    pNode.rightTree = lNode;
    
    if (pNode.leftTree) {
        [MirrorOfTree mirrorOfTree:pNode.leftTree];
    }
    
    if (pNode.rightTree) {
        [MirrorOfTree mirrorOfTree:pNode.rightTree];
    }
}

@end
