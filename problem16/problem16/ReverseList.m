//
//  ReverseList.m
//  problem16
//
//  Created by wangnate on 2018/6/18.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "ReverseList.h"

@implementation ReverseList

+ (ListNode *)reverseList:(ListNode *)head {
    
    ListNode *reverseHead = nil;
    ListNode *pNode = head;
    ListNode *pPrev = nil;
    
    while (pNode) {
        
        ListNode *pNext = pNode.next;
        
        if (pNext == nil) {
            reverseHead = pNode;
        }
        
        pNode.next = pPrev;
        
        pPrev = pNode;
        pNode = pNext;
    }
    
    return reverseHead;
    
}


@end
