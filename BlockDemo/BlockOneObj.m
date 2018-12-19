//
//  BlockOneObj.m
//  BlockDemo
//
//  Created by 王鑫 on 2018/12/19.
//  Copyright © 2018 wangxin. All rights reserved.
//

#import "BlockOneObj.h"

@implementation BlockOneObj

- (void)testMethod {
       
    __block int muIntNum = 6;
    int(^Block)(int) = ^int(int num){
        return num *muIntNum;
    };
         
    muIntNum = 4;
    Block(2);
}

- (void)test {
    
    NSMutableArray *muArr = [[NSMutableArray alloc] init];
    
    void(^Block)(void) = ^{
        //这里只是做了添加操作，并非赋值，所以不需要用__block进行修饰
        [muArr addObject:@"111"];
    };
    
    Block();
    
    __block NSMutableArray *muArrOther = nil;
    
    void(^BlockOther)(void) = ^{
        //这里做了赋值操作，所以需要用__block进行修饰，否则会出现编译报错
        muArrOther = [NSMutableArray array];
    };
    
    BlockOther();
}


@end
