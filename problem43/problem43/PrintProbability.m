//
//  PrintProbability.m
//  problem43
//
//  Created by wangnate on 2018/8/7.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import "PrintProbability.h"

@implementation PrintProbability

+ (void)PrintProbability:(int)number {
    
    if (number < 1) return;
    
    int g_maxValue = 6;
    
    int pProbabilities[2][g_maxValue*number +1];
    for(int i=0;i<g_maxValue;i++){//初始化数组
        pProbabilities[0][i] = 0;
        pProbabilities[1][i] = 0;
    }
    int flag = 0;
    for(int i=1;i<=g_maxValue;i++){//当第一次抛掷骰子时，有6种可能，每种可能出现一次
        pProbabilities[flag][i] = 1;
    }
    //从第二次开始掷骰子，假设第一个数组中的第n个数字表示骰子和为n出现的次数，
    //在下一循环中，我们加上一个新骰子，此时和为n的骰子出现次数应该等于上一次循环中骰子点数和为n-1,n-2,n-3,n-4,n-5，
    //n-6的次数总和，所以我们把另一个数组的第n个数字设为前一个数组对应的n-1,n-2,n-3,n-4,n-5，n-6之和
    for(int k =2;k<=number;k++){
        for(int i=0;i<k;i++){//第k次掷骰子，和最小为k，小于k的情况是不可能发生的！所以另不可能发生的次数设置为0！
            pProbabilities[1-flag][i] = 0;
        }
        for(int i=k;i<=g_maxValue*k;i++){//第k次掷骰子，和最小为k，最大为g_maxValue*k
            pProbabilities[1-flag][i] = 0;//初始化，因为这个数组要重复使用，上一次的值要清0
            for(int j=1;j<=i&&j<=g_maxValue;j++){
                pProbabilities[1-flag][i] += pProbabilities[flag][i-j];
            }
        }
        flag = 1-flag;
    }
    double total = pow(g_maxValue, number);
    for(int i=number;i<=g_maxValue*number;i++){
        double ratio = pProbabilities[flag][i]/total;
        
        NSLog(@"sum:%d ratio:%f", i, ratio);
    }
    
}

@end
