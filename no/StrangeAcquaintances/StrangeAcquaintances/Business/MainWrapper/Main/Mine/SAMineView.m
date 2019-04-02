//
//  SAMineView.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/3/24 23:50 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SAMineView.h"

@interface SAMineView ()

@property (nonatomic, strong) SABaseTView *tableView;

@end

@implementation SAMineView

- (void)baseInit {
    [super baseInit];
    
    _tableView = [[SABaseTView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    [self addSubview:_tableView];
    
}

@end
