//
//  lastOneWay.m
//  problem45
//
//  Created by wangnate on 2018/8/10.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "lastOneWay.h"

@implementation lastOneWay

+(int)lastOneWay:(int )n m:(int)m {
    
    if (n < 1 || m < 1) {
        return -1;
    }
    
    int last = 0;
    for (int i = 2; i <= n; i++) {
        last = (last + m) % i;
    }
    
    return last;
    
}

@end
