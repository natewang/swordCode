//
//  BTreeNode.h
//  problem6
//
//  Created by wangnate on 2018/3/23.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTreeNode : NSObject

@property (nonatomic, assign) NSInteger data;
@property (nonatomic, strong) BTreeNode *leftChild;
@property (nonatomic, strong) BTreeNode *rightChild;


@end
