//
//  NumberOf1Between1AndN.m
//  problem32
//
//  Created by nate on 2018/8/4.
//  Copyright © 2018年 ffrj. All rights reserved.
//

#import "NumberOf1Between1AndN.h"
//1-N中数字出现1的次数

@implementation NumberOf1Between1AndN

+ (int)getNumberOf1Between1AndN:(int)n {
    
    if (n == 0) return 0;
    
    int count = 0;
    
    for (int i = 0; i < n; i++) {
        
        int val = i;
        
        while (val != 0) {
            
            if (val % 10 == 1) {
                
                count++;
            }
            
            val = val / 10;
        }
    }
    
    return count;
}

@end
