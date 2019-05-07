//
//  MMModifyViewController.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 16:42 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMModifyViewController.h"
#import "MMModifyView.h"

#import "MMModifyCateogryView.h"

@interface MMModifyViewController ()

@property (nonatomic, strong) MMModifyView *view;

@end

@implementation MMModifyViewController

MM_DYNAMIC_VIEW(MMModifyView);

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];

    [self viewInit];
}

- (void)viewInit {
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_back"] style:UIBarButtonItemStyleDone target:self action:@selector(onBackAction:)];
    self.navigationItem.leftBarButtonItem = leftItem;
   
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"保存" style:UIBarButtonItemStylePlain target:self action:@selector(onSaveAction:)];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)onSaveAction:(UIBarButtonItem *)item {
    DLog(@"保存当前的图片");
}

- (void)onBackAction:(UIBarButtonItem *)item {
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = NO;
}

@end
