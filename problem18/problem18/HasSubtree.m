//
//  HasSubtree.m
//  problem18
//
//  Created by wangnate on 2018/6/25.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "HasSubtree.h"
#import "Tree.h"

@implementation HasSubtree

+ (BOOL)hasSubtree:(Tree *)pRoot1 pRoot2:(Tree *)pRoot2 {
    
    if (!pRoot2) return YES;
    if (!pRoot1) return NO;
    
    if (pRoot1.value != pRoot2.value) return NO;
    
    return ([HasSubtree hasSubtree:pRoot1.leftTree pRoot2:pRoot2.leftTree]
            && [HasSubtree hasSubtree:pRoot1.rightTree pRoot2:pRoot2.rightTree]
            );
}

@end
