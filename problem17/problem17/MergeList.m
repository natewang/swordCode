//
//  MergeList.m
//  problem17
//
//  Created by wangnate on 2018/6/19.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "MergeList.h"

@implementation MergeList

+ (ListNode *)mergeList:(ListNode *)head1 head2:(ListNode *)head2 {
    
    if (!head1) {
        return head2;
    } else if (!head2) {
        return head1;
    }
    
    ListNode *head;
    
    if (head1.data < head2.data) {
        
        head = head1;
        
        head.next = [MergeList mergeList:head1.next head2:head2];
        
        
    } else {
        
        head = head2;

        ListNode *temp2 = head2.next;
        
        head2.next = [MergeList mergeList:temp2 head2:head1];
        
    }
    
    
    return head;
}

@end
