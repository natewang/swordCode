//
//  ConstructBTree.h
//  problem6
//
//  Created by wangnate on 2018/3/23.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BTreeNode.h"

@interface ConstructBTree : NSObject

+ (BTreeNode *)construct:(NSArray *)pre inl:(NSArray *)inl;

@end
