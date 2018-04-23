//
//  StackForNSObject.h
//  problem7
//
//  Created by wangnate on 2018/3/26.
//  Copyright © 2018年 wangnate. All rights reserved.
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

