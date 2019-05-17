//
//  MMStickerViewController.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/16 17:05 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMStickerViewController.h"
#import "MMStickerView.h"

@interface MMStickerViewController ()

@end

@implementation MMStickerViewController

MM_DYNAMIC_VIEW(MMStickerView);

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
}

@end
