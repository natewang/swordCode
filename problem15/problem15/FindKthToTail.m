//
//  FindKthToTail.m
//  problem15
//
//  Created by wangnate on 2018/6/14.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "FindKthToTail.h"

@implementation FindKthToTail

+ (ListNode *)findKthToTail:(ListNode *)head k:(int)k {
    
    if (!head || k == 0) {
        return nil;
    }
    
    ListNode *jnode = head;
    ListNode *inode = NULL;
    
    for (NSInteger i = 0; i < k  -1; i++) {
        jnode = jnode.next;
    }
    
    inode = head;
    
    while (jnode.next) {
        
        
        jnode = jnode.next;
        inode = inode.next;
    }
    
    return inode;
}

@end
