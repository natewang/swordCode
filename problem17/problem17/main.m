//
//  main.m
//  problem17
//
//  Created by wangnate on 2018/6/19.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MergeList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ListNode *n0 = [[ListNode alloc] initWithData:1];
        ListNode *n1 = [[ListNode alloc] initWithData:3];
        ListNode *n2 = [[ListNode alloc] initWithData:5];
        ListNode *n3 = [[ListNode alloc] initWithData:7];
        ListNode *n4 = [[ListNode alloc] initWithData:9];
        
        n0.next = n1;
        n1.next = n2;
        n2.next = n3;
        n3.next = n4;
        
        ListNode *l0 = [[ListNode alloc] initWithData:2];
        ListNode *l1 = [[ListNode alloc] initWithData:4];
        ListNode *l2 = [[ListNode alloc] initWithData:6];
        ListNode *l3 = [[ListNode alloc] initWithData:8];
        ListNode *l4 = [[ListNode alloc] initWithData:10];
        
        l0.next = l1;
        l1.next = l2;
        l2.next = l3;
        l3.next = l4;
        
        
        NSLog(@"%@", [MergeList mergeList:n0 head2:l0]);
    }
    return 0;
}
