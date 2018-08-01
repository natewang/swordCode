//
//  FindPath.h
//  problem25
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BTreeNode.h"

@interface FindPath : NSObject

+ (NSArray *)findPath:(BTreeNode *)root target:(int)target;

@end
