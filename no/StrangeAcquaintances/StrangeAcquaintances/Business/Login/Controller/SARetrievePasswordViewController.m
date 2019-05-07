//
//  SARetrievePasswordViewController.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/25 21:00 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SARetrievePasswordViewController.h"
#import "SARetrievePasswordView.h"
#import "SARetrievePasswordProtocol.h"

// 找回密码
@interface SARetrievePasswordViewController ()<SARetrievePasswordProtocol>

@property (nonatomic, strong) SARetrievePasswordView *view;

@end

@implementation SARetrievePasswordViewController

SA_DYNAMIC_VIEW(SARetrievePasswordView);

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
}

@end
