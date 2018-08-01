//
//  PrintToMaxNDigits.m
//  problem12
//
//  Created by wangnate on 2018/6/12.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "PrintToMaxNDigits.h"

@implementation PrintToMaxNDigits

+ (void)printToMaxNDigits:(int)n {
    
    if (n < 0) {
        return;
    }
    
    char number[n];
    for (int i = 0; i < 10; ++i) {
        
        number[0] = i + '0';
        [self recursively:number n:n index:0];
    }
}

+ (void)recursively:(char [])number n:(int)length index:(int)index {
    
    if(index == length - 1) {
        
        for (int idx = 0; idx < length; idx++) {
            
            if (number[idx] != '0') {
        
                //未去前面的0
                NSLog(@"%s", number);
                
                return;
            }
        }
    }
    
    for (int i = 0; i < 10; ++i) {
        number[index + 1] = i + '0';
        [self recursively:number n:length index:index + 1];
    }
    
}

@end
