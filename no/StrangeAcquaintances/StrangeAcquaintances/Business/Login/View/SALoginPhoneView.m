//
//  SALoginPhoneView.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 21:37 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SALoginPhoneView.h"

@interface SALoginPhoneView ()

@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UITextField *phoneTextfield;

@end

@implementation SALoginPhoneView

- (void)baseInit {
    [super baseInit];
    
    _iconView = [UIImageView new];
    _phoneTextfield = [UITextField new];
    [self addSubviews:@[_iconView, _phoneTextfield]];
    
}


@end
