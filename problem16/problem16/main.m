//
//  main.m
//  problem16
//
//  Created by wangnate on 2018/6/18.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReverseList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        ListNode *n0 = [[ListNode alloc] initWithData:1];
        ListNode *n1 = [[ListNode alloc] initWithData:2];
        ListNode *n2 = [[ListNode alloc] initWithData:3];
        ListNode *n3 = [[ListNode alloc] initWithData:4];
        ListNode *n4 = [[ListNode alloc] initWithData:5];
        ListNode *n5 = [[ListNode alloc] initWithData:6];
        
        n0.next = n1;
        n1.next = n2;
        n2.next = n3;
        n3.next = n4;
        n4.next = n5;
        
        NSLog(@"%ld", [ReverseList reverseList:n0].data);
        
    }
    return 0;
}
