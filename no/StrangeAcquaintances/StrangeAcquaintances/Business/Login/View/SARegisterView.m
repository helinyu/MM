//
//  SARegisterView.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/25 20:56 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SARegisterView.h"

static NSString *const kPhoneDefaultText = @"请输入手机号";
static NSString *const kEmailDefaultText = @"请输入邮箱";
static NSString *const kPasswordDefaultText = @"请输入密码";
static NSString *const kVerifyPasswordDefaultText = @"请确认输入密码";

// 注册有邮箱和手机号码
@interface SARegisterView ()

@property (nonatomic, strong) UITextField *accountTF;
@property (nonatomic, strong) UITextField *passwordTF;
@property (nonatomic, strong) UITextField *verifyPasswordTF;

@property (nonatomic, strong) UIButton *determineBtn;

@end

@implementation SARegisterView

- (void)baseInit {
    [super baseInit];
    
    _accountTF = [UITextField new];
    _passwordTF = [UITextField new];
    _verifyPasswordTF = [UITextField new];
    _determineBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [self addSubviews:@[_accountTF, _passwordTF, _verifyPasswordTF, _determineBtn]];
    
    [_passwordTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.left.equalTo(self).offset(16.f);
        make.height.mas_equalTo(40.f);
    }];
    _passwordTF.placeholder = kPasswordDefaultText;

    [_accountTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.left.equalTo(self).offset(16.f);
        make.height.mas_equalTo(40.f);
        make.bottom.equalTo(self.passwordTF.mas_top).offset(-10.f);
    }];
    _accountTF.placeholder = kPhoneDefaultText;
    
    
    [_verifyPasswordTF  mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.left.equalTo(self).offset(16.f);
        make.height.mas_equalTo(40.f);
        make.top.equalTo(self.passwordTF.mas_bottom).offset(10.f);
    }];
    _verifyPasswordTF.placeholder = kVerifyPasswordDefaultText;
    
    [_determineBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self.verifyPasswordTF.mas_bottom).offset(10.f);
        make.left.equalTo(self).offset(10.f);
        make.height.mas_equalTo(40.f);
    }];
    [_determineBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [_determineBtn setTitle:@"确认" forState:UIControlStateNormal];
}

@end
