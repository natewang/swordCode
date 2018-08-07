//
//  BTreeUtil.m
//  problem39
//
//  Created by wangnate on 2018/8/6.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "BTreeUtil.h"
#import "BTreeNode.h"
@implementation BTreeUtil

+ (int)getDepth:(BTreeNode *)root {
    
    if (root == nil) return 0;
    
    int left = [self getDepth:root.leftChild];
    int right = [self getDepth:root.rightChild];
    
    return (left > right) ? (left + 1) : (right + 1);
    
}




@end
