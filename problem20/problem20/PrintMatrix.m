//
//  PrintMatrix.m
//  problem20
//
//  Created by wangnate on 2018/7/11.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "PrintMatrix.h"

@implementation PrintMatrix

+ (void)printOneCircle:(NSArray *)arr start:(int)start row:(int )row column:(int)column {
    
    // 从左到右打印一行
    for (int i = start; i <= column; i++) {
        NSLog(@"%@", arr[start][i]);
    }
    
    // 从上向下打印一列
    if (start == row) {
        return;
    }
    for (int i = start + 1; i <= row; i++) {
        NSLog(@"%@", arr[i][column]);
    }
    
    // 从右向左打印一行
    if (start == column) {
        return;
    }
    for (int i = column - 1; i >= start; i--) {
        NSLog(@"%@", arr[row][i]);
    }
    
    // 从下往上打印一列
    for (int i = row - 1; i >= start + 1; i--) {
        NSLog(@"%@", arr[i][start]);
    }
    
}

+ (void)printMatrix:(NSArray<NSArray *>*)arr {
    
    if (arr.count ==0) return;
    
    NSInteger row = arr.count -1;
    NSInteger column = arr.firstObject.count - 1;
    
    for (int i = 0; 2 * i <= row && 2 * i <= column; i++) {
        [PrintMatrix printOneCircle:arr start:i row:row column:column];;
    }
    
}




@end
