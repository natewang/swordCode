//
//  Add.m
//  problem47
//
//  Created by wangnate on 2018/8/10.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "Add.h"

@implementation Add

+ (int)add:(int )num1 num2:(int)num2 {
    
    int sum = 0;
    int carry = 0;
    
    do {
        sum = num1 ^ num2;
        carry = (num1 & num2) << 1;
        
        num1 = sum;
        num2 = carry;
        
    } while (num2 != 0);
    
    return num1;
    
}

@end
