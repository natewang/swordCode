//
//  getFirstNotRepeatingWay1.m
//  problem35
//
//  Created by wangnate on 2018/8/5.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "getFirstNotRepeatingWay1.h"

@implementation getFirstNotRepeatingWay1

+ (NSString *)getFirstNotRepeatingWay1:(NSString *)str
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    for (int i = 0; i < str.length; i++) {
        
        NSString *indxStr = [str substringWithRange:NSMakeRange(i, 1)];
        if (dic[indxStr]) {
            
            NSInteger count = [dic[indxStr] integerValue] + 1;
            dic[indxStr] = @(count);
            
        }else {
            
            dic[indxStr] = @(1);
        }
    }
    
    for (int i = 0; i < str.length; i++) {
        
        NSString *indxStr = [str substringWithRange:NSMakeRange(i, 1)];
        if ([dic[indxStr] integerValue] == 1) {
            return indxStr;
        }
    }
    
    return nil;
}

@end
