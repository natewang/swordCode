//
//  main.m
//  problem5
//
//  Created by wangnate on 2018/3/22.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReversePrintNode.h"

//输入一个链表，从尾到头打印链表每个节点的值

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
    
        ListNode *node1 = [[ListNode alloc] initWithData:1];
        ListNode *node2 = [[ListNode alloc] initWithData:2];
        ListNode *node3 = [[ListNode alloc] initWithData:3];
        node1.next = node2;
        node2.next = node3;
        
        [ReversePrintNode print:node1];
        
        
    }
    return 0;
}
