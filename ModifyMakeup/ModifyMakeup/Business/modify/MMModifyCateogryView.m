//
//  MMModifyCateogryView.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 17:32 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMModifyCateogryView.h"

@interface MMModifyCateogryView ()

@property (nonatomic, strong) UICollectionView *bottomCategoryView;
@property (nonatomic, strong) UIView *contentView;

@end

static CGFloat const kCategoryH = 44.f;

@implementation MMModifyCateogryView

- (void)baseInit {
    [super baseInit];
    
    self.backgroundColor = [UIColor whiteColor];
    
    UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    _bottomCategoryView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    _contentView = [UIView new];
    [self addSubviews:@[_bottomCategoryView, _contentView]];
    
    [_bottomCategoryView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.bottom.equalTo(self).offset(kBottomFix);
        make.height.mas_equalTo(kCategoryH);
    }];
    _bottomCategoryView.backgroundColor = kRGB_66;
}

@end
