//
//  Tree.h
//  problem18
//
//  Created by wangnate on 2018/6/25.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Tree;

@interface Tree : NSObject

@property (nonatomic, assign) NSInteger value;

@property (nonatomic, strong) Tree * leftTree;

@property (nonatomic, strong) Tree * rightTree;

@end
