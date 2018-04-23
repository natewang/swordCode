//
//  ListNode.h
//  problem5
//
//  Created by wangnate on 2018/3/22.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject

@property (nonatomic, assign) int data;
@property (nonatomic, strong) ListNode *next;

- (instancetype)initWithData:(int)data;

@end
