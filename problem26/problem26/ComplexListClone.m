//
//  ComplexListClone.m
//  problem26
//
//  Created by wangnate on 2018/7/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "ComplexListClone.h"

@implementation ComplexListClone

+ (ComplexListNode *)cloneList:(ComplexListNode *)head {
    
    ComplexListNode *p = head;
    while (p) {
        ComplexListNode *cloneNode = [[ComplexListNode alloc] init];
        cloneNode.data = p.data;
        cloneNode.next = p.next;
        p.next = cloneNode;
        p = cloneNode.next;
    }
    
    p = head;
    while (p) {
        
        ComplexListNode *cloneNode = p.next;
        if (cloneNode.sibling) {
            
            cloneNode.sibling = p.sibling.next;
        }
        p = cloneNode.next;
    }
    
    p = head;
    ComplexListNode *cloneHead;
    ComplexListNode *pClone;
    while (p) {
        
        pClone = cloneHead = p.next;
        p.next = pClone.next;
        p = p.next;
    }
    
    while (p) {
        
        pClone.next = p.next;
        pClone = pClone.next;
        p.next = pClone.next;
        p = p.next;
    }
    
    return cloneHead;
}

@end
