//
//  ReversePrintNode.m
//  problem5
//
//  Created by wangnate on 2018/3/22.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "ReversePrintNode.h"

@implementation ReversePrintNode

+ (void)print:(ListNode *)head
{
    
    NSMutableArray *list = [NSMutableArray array];
    while (head) {
        [list addObject:@(head.data)];
        head = head.next;
    }
    
    [[[list reverseObjectEnumerator] allObjects] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@", obj);
    }];
}


@end
