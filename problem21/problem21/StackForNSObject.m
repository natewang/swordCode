//
//  StackForNSObject.m
//  C语言实现栈
//
//  Created by HEYANG on 16/3/28.
//  Copyright © 2016年 HEYANG. All rights reserved.
//
//  http://www.cnblogs.com/goodboy-heyang
//  https://github.com/HeYang123456789
//

#import "StackForNSObject.h"

@interface StackForNSObject ()

/** maxSize */
//@property (nonatomic,assign)NSInteger maxSize;

// 有入栈就有出栈的时候，使用强引用，就要记得释放引用
/** NSMutableArray */
@property (nonatomic,strong)NSMutableArray *stackArray;

/** top of stack */
@property (nonatomic,assign)NSInteger top;

/** stack */
//@property (nonatomic,weak)StackBlock stackBlock;

@end

@implementation StackForNSObject

// 初始化

// 入栈
-(void)push:(id)objet{
    [self.stackArray addObject:objet];
}

// 出栈
-(id)popTopElement{
    id objc = [self.stackArray lastObject];
    [self.stackArray removeLastObject];
    return objc;
}

// 返回栈顶元素
-(id)TopElement{
    return [self.stackArray lastObject];
}

// 是否为空
-(BOOL)isEmpty{
    return self.stackArray.count;
}

// 栈的长度
-(NSInteger)stackLength{
    return self.stackArray.count;
}

// 从底部开始遍历
-(void)traversalElementFromBottom:(StackBlock)block{
    NSEnumerator *objc = [self.stackArray objectEnumerator];
    for (id element in objc) {
        block(element);
    }
}

// 从顶部开始遍历
-(void)traversalElementFromtop:(StackBlock)block{
    // 先获取存储元素的个数
    NSInteger count = self.stackArray.count - 1;
    for (NSInteger i = count; i >= 0; i --) {
        // 处理最后一个元素
        block([self.stackArray objectAtIndex:i]);
    }
}

// 所有元素出栈，同时遍历
-(void)traversalElementPopStack:(StackBlock)block{
    // 先获取存储元素的个数
    NSInteger count = self.stackArray.count;
    for (NSInteger i = count; i > 0; i --) {
        // 处理最后一个元素
        block(self.stackArray.lastObject);
        [self.stackArray removeLastObject];
    }
}

// 返回栈顶元素
-(id)topElemet{
    return self.stackArray.lastObject;
}

// 清空
-(void)removeAllObjects{
    [self.stackArray removeAllObjects];
}

#pragma mark - 懒加载
-(NSMutableArray*)stackArray{
    if (_stackArray == nil) {
        _stackArray = [NSMutableArray array];
    }
    return _stackArray;
}
-(NSInteger)top{
    _top = self.stackArray.count;
    return _top;
}

#pragma mark - 不存在该对象的时候，自动清空
- (void)dealloc{
    [self.stackArray removeAllObjects];
}

@end
