//
//  FirstCommonNode.m
//  problem37
//
//  Created by wangnate on 2018/8/6.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "FirstCommonNode.h"

@implementation FirstCommonNode

+ (ListNode *)find:(ListNode *)root1 root2:(ListNode *)root2 {
    
    int len1 = [self getLength:root1];
    int len2 = [self getLength:root2];
    ListNode *p;
    ListNode *q;
    int dif = 0;
    if (len1 > len2) {
        p = root1;
        q = root2;
        dif = len1 - len2;
    } else {
        p = root2;
        q = root1;
        dif = len2 - len1;
    }
    for (int i = 0; i < dif; i++) {
        p = p.next;
    }
    while (p != nil && q != nil && p != q) {
        p = p.next;
        q = q.next;
    }
    
    return p;
}

+ (int)getLength:(ListNode *)root {
    int res = 0;
    if (root == nil) {
        return res;
    }
    ListNode *p = root;
    while (p != nil) {
        p = p.next;
        res++;
    }
    
    return res;
    
}

@end
