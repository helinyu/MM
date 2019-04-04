//
//  SALoginView.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 21:33 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SALoginView.h"
#import "SALoginPhoneView.h"
#import "SALoginVerificationCodeView.h"
#import "SALoginPasswordView.h"


@interface SALoginView ()

@property (nonatomic, strong) UIImageView *avatarView;

@property (nonatomic, strong) SALoginPhoneView *phoneView;
@property (nonatomic, strong) SALoginVerificationCodeView *verificationCodeView;
@property (nonatomic, strong) SALoginPasswordView *passwordView;

@property (nonatomic, strong) UIButton *forgetPasswordBtn;

@property (nonatomic, strong) UIButton *LoginBtn;

@property (nonatomic, strong) UIButton *toggleVerAndPassBtn;

@property (nonatomic, strong) UIView *thirdPartView;

@property (nonatomic, strong) UILabel *agreementL;

@end

@implementation SALoginView


@end
