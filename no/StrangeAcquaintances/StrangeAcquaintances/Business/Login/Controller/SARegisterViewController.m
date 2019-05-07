//
//  SARegisterViewController.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/25 20:56 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SARegisterViewController.h"
#import "SARegisterView.h"
#import "SARegisterProtocol.h"

@interface SARegisterViewController ()<SARegisterProtocol>

@property (nonatomic, strong) SARegisterView *view;

@end

@implementation SARegisterViewController

SA_DYNAMIC_VIEW(SARegisterView);

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.title = @"注册";
    
    [self.view.determineBtn addTarget:self action:@selector(onDetermineAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)onDetermineAction:(UIButton *)sender {
    [[DDLog sharedInstance] log:YES message:nil];
}


@end
