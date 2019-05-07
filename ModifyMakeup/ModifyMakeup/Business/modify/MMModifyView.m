//
//  MMModifyView.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 16:42 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMModifyView.h"
#import "MMModifyCateogryView.h"

static CGFloat const kCategoryH = 200.f;

@interface MMModifyView ()

@property (nonatomic, strong) UIImageView *originImgView;
@property (nonatomic, strong) MMModifyCateogryView *categoryView;

@end

@implementation MMModifyView

- (void)baseInit {
    [super baseInit];
    
    _originImgView = [UIImageView new];
    _categoryView = [MMModifyCateogryView new];
    [self addSubviews:@[_originImgView, _categoryView]];
    
    [_categoryView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.bottom.equalTo(self).offset(-kBottomFix);
        make.height.mas_equalTo(kCategoryH);
    }];
    
    [_originImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.top.equalTo(self);
        make.bottom.equalTo(self).offset(-(kCategoryH + kBottomFix));
    }];
}

- (void)setImage:(UIImage *)image {
    _image = image;
    _originImgView.image = image;
}

@end