//
//  PermutationOfString.m
//  problem28
//
//  Created by wangnate on 2018/7/27.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "PermutationOfString.h"

@implementation PermutationOfString

+ (NSArray *)Permutation:(NSString *)str {
    
    if (!str) return nil;
    
    NSMutableSet *set = [NSMutableSet set];
    char a[str.length * 2];  // Make sure there's enough space
    memcpy(a, [str cStringUsingEncoding:NSASCIIStringEncoding], 2*[str length]);

    [PermutationOfString permCore:set a:a low:0 high:str.length - 1];
    
    return set.allObjects;
    
}

+ (void)permCore:(NSMutableSet *)set a:(char *)a low:(int)low high:(int)high {
    
    if (low == high) {
        
        [set addObject:[NSString stringWithFormat:@"%s", a]];
        
    } else {
        
        for (int i = low; i <= high; i++) {
            swap(a, i, low);
            [PermutationOfString permCore:set a:a low:low+1 high:high];
            swap(a, i, low);
        }
    }
}

void swap(char a[], int i, int j) {
    
    if(i == j) return;
    
    char temp = a[i];
    a[i] = a[j];
    a[j] = temp;
}



@end
