//
//  FindPath.m
//  problem25
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "FindPath.h"
#import "StackForNSObject.h"

@implementation FindPath

+ (NSArray *)findPath:(BTreeNode *)root target:(int)target {
    
    if (!root) {
        return nil;
    }
    
    NSMutableArray<NSMutableArray<NSNumber *> *> *list = [NSMutableArray array];
    StackForNSObject *stack = [[StackForNSObject alloc] init];
    
    [FindPath generate:root target:target stack:stack list:list];
    return list;
}

+ (void)generate:(BTreeNode *)root target:(int)target stack:(StackForNSObject *)stack list:(NSMutableArray<NSMutableArray<NSNumber *> *> *)list {
    
    if (!root) return;
    
    if (!root.leftChild && !root.rightChild) {
        
        if (root.data == target) {
            
            NSMutableArray *tmpList = [NSMutableArray array];
            [stack traversalElementFromtop:^(id objc) {
                [tmpList addObject:objc];
            }];
            [tmpList addObject:@(root.data)];
            [list addObject:tmpList];
        }
    } else {
        
        [stack push:@(root.data)];
        
        [FindPath generate:root.leftChild target:target -root.data stack:stack list:list];
        
        [FindPath generate:root.rightChild target:target -root.data stack:stack list:list];
        
        [stack popTopElement];
    }
}

@end
