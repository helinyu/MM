//
//  SALoginViewController.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 21:19 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SALoginViewController.h"

#import "SALoginProtocol.h"
#import "BeeHive.h"

#import "SALoginView.h"

@interface SALoginViewController ()<SALoginProtocol>

@property (nonatomic, strong) SALoginView *view;

@end

@implementation SALoginViewController

SA_DYNAMIC_VIEW(SALoginView);

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"登录";
    
    self.view.backgroundColor = [UIColor yellowColor];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

@end
