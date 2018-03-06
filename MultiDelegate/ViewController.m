//
//  ViewController.m
//  MultiDelegate
//
//  Created by maopao-ios on 2017/9/15.
//  Copyright © 2017年 ALD. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "RedpointManager.h"
#import "NSObject+MultiDegate.h"
@interface ViewController ()<RedpointManagerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[RedpointManager shareInstance] addDelegate:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)nextController:(id)sender {
   
    ViewController1 *vc = [[ViewController1 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)redpointManagerDidReceicePoint:(NSInteger)pointType {
    
    NSLog(@"%@ 收到红点 %ld",NSStringFromClass([self class]),pointType);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [[RedpointManager shareInstance] testPoint:2];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    /**
     这里测试一下，后面被添加的代理桥接对象有没有被释放
     */
    [[RedpointManager shareInstance] operationDelegate:^(id delegate) {
        NSLog(@"还剩下代理 %@",delegate);
    }];
}
@end
