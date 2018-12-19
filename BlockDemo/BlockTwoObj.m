//
//  BlockTwoObj.m
//  BlockDemo
//
//  Created by 王鑫 on 2018/12/19.
//  Copyright © 2018 wangxin. All rights reserved.
//

#import "BlockTwoObj.h"

//全局变量
int global_var = 4;
//全局静态变量
static int static_global_var = 5;

@implementation BlockTwoObj

- (void)testMethodTwo {
    
    //基本数据类型的局部变量
    int var = 1;
    //对象类型的的局部变量
    __unsafe_unretained id unsafe_obj = nil;
    __strong id strong_obj = nil;
    
    //局部静态变量
    static int static_var = 3;
    
    void(^Block)(void) = ^{
        
        NSLog(@"基本数据类型局部变量：%d", var);
        NSLog(@"对象类型局部变量（__unsafe_unretained修饰）：%@", unsafe_obj);
        NSLog(@"对象类型局部变量（__strong修饰）：%@", strong_obj);
        
        NSLog(@"局部静态变量：%d", static_var);
        
        NSLog(@"全局变量：%d", global_var);
        NSLog(@"全局静态变量：%d", static_global_var);
    };
    
    Block();
}

@end
