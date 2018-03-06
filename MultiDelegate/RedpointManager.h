//
//  RedpointManager.h
//  MultiDelegate
//
//  Created by maopao-ios on 2017/9/15.
//  Copyright © 2017年 ALD. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol RedpointManagerDelegate<NSObject>
@optional

/**
 收到红点消息
 @param pointType 红点类型
 */
- (void)redpointManagerDidReceicePoint:(NSInteger)pointType;
@end
@interface RedpointManager : NSObject
- (void)addDelegate:(id<RedpointManagerDelegate>)delegate;
+ (instancetype)shareInstance;

- (void)testPoint:(NSInteger)pointType;
@end
