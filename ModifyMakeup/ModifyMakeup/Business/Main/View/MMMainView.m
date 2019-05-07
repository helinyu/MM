//
//  MMMainView.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 11:55 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMMainView.h"
#import "MMMainToolView.h"
#import "MMainTakeView.h"
#import "MMPhotoLayerView.h"

@interface MMMainView ()

@property (nonatomic, strong) MMMainToolView *topToolView;
@property (nonatomic, strong) MMainTakeView *bottomTakeView; // 160
@property (nonatomic, strong) MMPhotoLayerView *photoLayerView;

@end

static CGFloat const kTakeMaxH = 167.f;
static CGFloat const kToolH = 60.f;
static CGFloat const kPhotoLayerH = 500.f;

@implementation MMMainView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self baseInit];
    }
    return self;
}

- (void)baseInit {
    
    _topToolView = [MMMainToolView new];
    _bottomTakeView = [MMainTakeView new];
    _photoLayerView = [MMPhotoLayerView new];
    
    [self addSubviews:@[_photoLayerView, _topToolView, _bottomTakeView]];
    
    [_bottomTakeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.bottom.equalTo(self);
        make.height.mas_equalTo(kWidth(kTakeMaxH) +kBottomFix);
    }];
    _bottomTakeView.backgroundColor = [UIColor blueColor];
    
    [_photoLayerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self);
        make.height.mas_equalTo(kPhotoLayerH);
    }];
    _photoLayerView.backgroundColor = [UIColor greenColor];
    
    [_topToolView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.left.right.equalTo(self);
        make.height.mas_equalTo(kWidth(kToolH) + kTopFix);
    }];
    _topToolView.backgroundColor = [UIColor orangeColor];
}

@end
