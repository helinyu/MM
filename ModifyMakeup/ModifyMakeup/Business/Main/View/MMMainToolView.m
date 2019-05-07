//
//  MMMainToolView.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 13:46 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMMainToolView.h"

@interface MMMainToolView ()

@property (nonatomic, strong) UIButton *moreBtn;
@property (nonatomic, strong) UIButton *ratioBtn;
@property (nonatomic, strong) UIButton *albumBtn;
@property (nonatomic, strong) UIButton *cameraSwitchBtn;

@property (nonatomic, assign) CGFloat iconLength;

@end

static NSInteger const numOfALine = 4;
static CGFloat const kIconDefaultWidth = 30.f;

@implementation MMMainToolView

- (void)baseInit {
    [super baseInit];
    
    _iconLength = (kScreenWidth - kMargin17 *2)/(numOfALine -1);
    
    _moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _ratioBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _cameraSwitchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubviews:@[_moreBtn, _ratioBtn, _albumBtn, _cameraSwitchBtn]];
    
    [_moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.centerX.equalTo(self.mas_left).offset(kMargin17 +15.f);
    }];
    [_moreBtn setImage:[UIImage imageNamed:@"icon_more"] forState:UIControlStateNormal];
    [_moreBtn setImage:[UIImage imageNamed:@"icon_more_selected"] forState:UIControlStateHighlighted];
    _moreBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [_moreBtn setTintColor:[UIColor whiteColor]];
    
    [_cameraSwitchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.centerX.equalTo(self.mas_right).offset(-(kMargin17 + 15.f));
    }];
    [_cameraSwitchBtn setImage:[UIImage imageNamed:@"icon_camera_switch"] forState:UIControlStateNormal];
    [_cameraSwitchBtn setImage:[UIImage imageNamed:@"icon_camera_switch_selected"] forState:UIControlStateHighlighted];
    
    [_albumBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.centerX.equalTo(self.mas_right).offset(-(kMargin17 +kIconDefaultWidth/2 +self.iconLength));
    }];
    [_albumBtn setImage:[UIImage imageNamed:@"icon_album"] forState:UIControlStateNormal];
    [_albumBtn setImage:[UIImage imageNamed:@"icon_album_selected"] forState:UIControlStateHighlighted];
    _albumBtn.layer.cornerRadius = (kIconDefaultWidth -8.f)/2.f;
    _albumBtn.layer.borderColor = kRGB_33.CGColor;
    _albumBtn.layer.borderWidth = 2.f;
    _albumBtn.layer.masksToBounds = YES;
    
    [_ratioBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.centerX.equalTo(self.mas_left).offset(kMargin17 +kIconDefaultWidth/2 +self.iconLength);
        make.width.mas_equalTo(21.f);
        make.height.mas_equalTo(28.f);
    }];
    [_ratioBtn setTitle:@"3:4" forState:UIControlStateNormal];
    _ratioBtn.titleLabel.font = [UIFont systemFontOfSize:13.f];
    _ratioBtn.layer.borderWidth = 1.f;
    _ratioBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    
    {
        _moreBtn.tag = MMBtnBusinessTypeMore;
        _ratioBtn.tag = MMBtnBusinessTypeRatio;
        _albumBtn.tag = MMBtnBusinessTypeAlbum;
        _cameraSwitchBtn.tag = MMBtnBusinessTypeCameraSwitch;
        [self addTargetWithBtns:@[_moreBtn, _ratioBtn, _albumBtn, _cameraSwitchBtn]];
    }
}

- (void)addTargetWithBtns:(NSArray<UIButton *> *)btns {
    for (UIButton *curBtn in btns) {
        W_S;
        [curBtn addBlockForControlEvents:UIControlEventTouchUpInside block:^(UIButton *sender) {
            !weakSelf.actionBlock? :weakSelf.actionBlock(sender.tag);
        }];
    }
}


@end
