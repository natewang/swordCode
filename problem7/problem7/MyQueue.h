//
//  MyQueue.h
//  problem7
//
//  Created by wangnate on 2018/3/26.
//  Copyright © 2018年 wangnate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackForNSObject.h"

@interface MyQueue : NSObject

- (void)push:(NSNumber *)num;
- (NSNumber *)pop;

@end
