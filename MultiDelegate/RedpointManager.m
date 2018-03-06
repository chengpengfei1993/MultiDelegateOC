//
//  RedpointManager.m
//  MultiDelegate
//
//  Created by maopao-ios on 2017/9/15.
//  Copyright © 2017年 ALD. All rights reserved.
//

#import "RedpointManager.h"
#import "NSObject+MultiDegate.h"

@implementation RedpointManager
+ (instancetype)shareInstance {
    static RedpointManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[RedpointManager alloc] init];
    });
    return manager;
}

- (void)addDelegate:(id<RedpointManagerDelegate>)delegate {
    [super addDelegate:delegate];
}

- (void)testPoint:(NSInteger)pointType {
    [self operationDelegate:^(id delegate) {
        if ([delegate respondsToSelector:@selector(redpointManagerDidReceicePoint:)]) {
            [delegate redpointManagerDidReceicePoint:pointType];
        }
    }];
}

@end
