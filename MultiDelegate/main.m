//
//  main.m
//  MultiDelegate
//
//  Created by maopao-ios on 2017/9/15.
//  Copyright © 2017年 ALD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#define N 2 + 3
int main(int argc, char * argv[]) {
    @autoreleasepool {
        const char *str1 = "12343";
        char a[N] = {};
        strcpy(a,str1);
        NSLog(@"sss %s",a);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
