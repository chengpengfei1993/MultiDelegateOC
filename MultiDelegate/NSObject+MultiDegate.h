//
//  NSObject+MultiDegate.h
//  mapgo
//
//  Created by maopao-ios on 2017/9/15.
//  Copyright © 2017年 Aladdin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MultiDegate)

- (void)addDelegate:(id)delegate;


/**
 一般不需要手动移除代理对象，内部已经做了自动监听释放
 */
- (void)removeDelegate:(id)delegate;

/**
 操作代理
 */
- (void)operationDelegate:(void(^)(id delegate))operation;

@end
