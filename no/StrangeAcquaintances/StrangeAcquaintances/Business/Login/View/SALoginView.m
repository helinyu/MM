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
#import "SALoginThirdPartView.h"

@interface SALoginView ()

@property (nonatomic, strong) UIScrollView *contentView;

@property (nonatomic, strong) UIImageView *avatarView;
@property (nonatomic, strong) SALoginPhoneView *phoneView;
@property (nonatomic, strong) SALoginVerificationCodeView *verificationCodeView;
@property (nonatomic, strong) SALoginPasswordView *passwordView;
@property (nonatomic, strong) UIButton *forgetPasswordBtn;
@property (nonatomic, strong) UIButton *LoginBtn;
@property (nonatomic, strong) UIButton *toggleVerAndPassBtn;
@property (nonatomic, strong) SALoginThirdPartView *thirdPartView;
@property (nonatomic, strong) UILabel *agreementL;

@end

static CGFloat kMarginLeft = 15.f;
static CGFloat kMarginRight = 15.f;

static CGFloat kAvatarLength = 60.f;
static CGFloat kAvatarTop = 30.f;
static CGFloat kAvatarBottom = 30.f;

static CGFloat kInputHeight = 40.f;
static CGFloat kInputVerticalSpace = 20.f;


@implementation SALoginView

- (void)baseInit {
    [super baseInit];
    
    _contentView = [UIScrollView new];
    [self addSubview:_contentView];
    
    _contentView.frame = kScreenBounds;
    
    MyLinearLayout *linearLayout = [MyLinearLayout new];
    linearLayout.orientation = MyOrientation_Vert;
    linearLayout.leftPos.equalTo(@(kMarginLeft));
    linearLayout.rightPos.equalTo(@(kMarginRight));
    [_contentView addSubview:linearLayout];
    
    _avatarView = [UIImageView new];
    _avatarView.mySize = CGSizeMake(kAvatarLength, kAvatarLength);
    _avatarView.myCenterX = 0.f;
    _avatarView.myTop = kAvatarTop;
    _avatarView.layer.cornerRadius = kAvatarLength/2.f;
    _avatarView.layer.masksToBounds = YES;
    _avatarView.backgroundColor = [UIColor redColor];
    [linearLayout addSubview:_avatarView];
    
    _phoneView = [SALoginPhoneView new];
    _phoneView.myTop = kAvatarBottom;
    _phoneView.myHeight = kInputHeight;
    _phoneView.myLeft = 0.f;
    _phoneView.myRight = 0.f;
    _phoneView.backgroundColor = [UIColor redColor];
    [linearLayout addSubview:_phoneView];
    
    _verificationCodeView = [SALoginVerificationCodeView new];
    _verificationCodeView.myTop = kInputVerticalSpace;
    _verificationCodeView.myHeight = kInputHeight;
    _verificationCodeView.myLeft = 0.f;
    _verificationCodeView.myRight = 0.f;
    _verificationCodeView.backgroundColor = [UIColor orangeColor];
    [linearLayout addSubview:_verificationCodeView];
    
    //    _passwordView = [SALoginPasswordView new];
    _forgetPasswordBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _forgetPasswordBtn.myTop = 10.f;
    _forgetPasswordBtn.myRight = 10.f;
    _forgetPasswordBtn.myHeight = 22.f;
    _forgetPasswordBtn.myWidth = 100.f;
    [_forgetPasswordBtn setTitle:@"忘记密码?" forState:UIControlStateNormal];
    [_forgetPasswordBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [linearLayout addSubview:_forgetPasswordBtn];
    
    _LoginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _LoginBtn.myLeft = 20.f;
    _LoginBtn.myRight = 20.f;
    _LoginBtn.myTop = 20.f;
    _LoginBtn.myHeight = 40.f;
    [_LoginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_LoginBtn setBackgroundColor:[UIColor orangeColor]];
    [_LoginBtn addTarget:self
                  action:@selector(onLoginAction:) forControlEvents:UIControlEventTouchUpInside];
    [linearLayout addSubview:_LoginBtn];
    
    _toggleVerAndPassBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_toggleVerAndPassBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_toggleVerAndPassBtn setTitle:@"手机验证码登录" forState:UIControlStateNormal];
    _toggleVerAndPassBtn.titleLabel.font = [UIFont systemFontOfSize:11.f];
    [linearLayout addSubview:_toggleVerAndPassBtn];
    
    _thirdPartView = [SALoginThirdPartView new];
    _thirdPartView.myLeft= _thirdPartView.myRight = 0.f;
    _thirdPartView.myHeight = 120.f;
    _thirdPartView.myTop = 40.f;
    _thirdPartView.backgroundColor = [UIColor greenColor];
    [linearLayout addSubview:_thirdPartView];
    
    _agreementL = [UILabel new];
    _agreementL.myLeft = _agreementL.myRight = 0.f;
    _agreementL.myTop = 20.f;
    _agreementL.myHeight = 20.f;
    _agreementL.myBottom = 20.f;
    _agreementL.text = @"登录代表你已阅读《产品app用户协议》";
    _agreementL.textAlignment = NSTextAlignmentCenter;
    _agreementL.backgroundColor = [UIColor purpleColor];
    _agreementL.textColor = [UIColor whiteColor];
    [linearLayout addSubview:_agreementL];
}


- (void)onLoginAction:(UIButton *)sender {
    
}

@end
