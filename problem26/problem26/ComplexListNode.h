//
//  ComplexListNode.h
//  problem26
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "ListNode.h"

@interface ComplexListNode : ListNode

@property (nonatomic, strong) ComplexListNode *sibling;

@property (nonatomic, strong) ComplexListNode *next;

@end
