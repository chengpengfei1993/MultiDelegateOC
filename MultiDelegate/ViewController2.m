//
//  ViewController2.m
//  MultiDelegate
//
//  Created by maopao-ios on 2017/9/15.
//  Copyright © 2017年 ALD. All rights reserved.
//

#import "ViewController2.h"
#import "RedpointManager.h"
@interface ViewController2 ()<RedpointManagerDelegate>

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    [[RedpointManager shareInstance] addDelegate:self];
}


- (IBAction)action:(id)sender {
    [[RedpointManager shareInstance] testPoint:3];
}



- (void)redpointManagerDidReceicePoint:(NSInteger)pointType {
    
    NSLog(@"%@ 收到红点 %ld",NSStringFromClass([self class]),pointType);
}

@end
