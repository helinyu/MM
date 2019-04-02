//
//  SAMineViewController.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/3/24 22:44 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SAMineViewController.h"
#import "SAMineView.h"

@interface SAMineViewController ()

@property (nonatomic, strong) SAMineView *view;

@end

@implementation SAMineViewController

SA_DYNAMIC_VIEW;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我的";
    
    self.view.backgroundColor = [UIColor orangeColor];
}

@end
