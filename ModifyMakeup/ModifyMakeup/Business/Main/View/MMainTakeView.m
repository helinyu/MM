//
//  MMainTakeView.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 13:49 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMainTakeView.h"

@interface MMainTakeView ()

@property (nonatomic, strong) UIButton *testBtn;

@end

@implementation MMainTakeView

- (void)baseInit {
    [super baseInit];

    _testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_testBtn];
    [_testBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
    [_testBtn setTitle:@"测试" forState:UIControlStateNormal];
    [_testBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    _testBtn.backgroundColor = [UIColor redColor];
}

@end
