//
//  StackForNSObject.h
//  C语言实现栈
//
//  Created by HEYANG on 16/3/28.
//  Copyright © 2016年 HEYANG. All rights reserved.
//
//  http://www.cnblogs.com/goodboy-heyang
//  https://github.com/HeYang123456789
//

#import <Foundation/Foundation.h>

// 只要参数是一个id类型的block
typedef void (^StackBlock)(id objc);

@interface StackForNSObject : NSObject

// 入栈
-(void)push:(id)objet;
// 出栈
-(id)popTopElement;
// 返回栈顶元素
-(id)TopElement;
// 是否为空
-(BOOL)isEmpty;
// 栈的长度
-(NSInteger)stackLength;
// 遍历，从栈底开始遍历
-(void)traversalElementFromBottom:(StackBlock)block;
// 从顶部开始遍历
-(void)traversalElementFromtop:(StackBlock)block;
// 所有元素出栈，一边出栈一边返回元素
-(void)traversalElementPopStack:(StackBlock)block;
// 清空
-(void)removeAllObjects;
// 返回栈顶元素
-(id)topElemet;

@end
