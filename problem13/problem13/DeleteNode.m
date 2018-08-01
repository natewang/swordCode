//
//  DeleteNode.m
//  problem13
//
//  Created by wangnate on 2018/6/13.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "DeleteNode.h"

@implementation DeleteNode

+ (void)deleteNode:(ListNode *)head deleted:(ListNode *)deleted {
    
    if (head == NULL || deleted == NULL) {
        return;
    }
    
    if (deleted.next != nil) {
        
        deleted.data = deleted.next.data;
        deleted.next = deleted.next.next;
        
    } else if (head == deleted) {
        
        head = nil;
    } else {
        
        ListNode *node = head;
        while (node.next != deleted) {
            node = node.next;
        }
        
        node.next = nil;
    }
}

@end
