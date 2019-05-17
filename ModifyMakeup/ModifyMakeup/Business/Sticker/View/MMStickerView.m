//
//  MMStickerView.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/16 17:10 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMStickerView.h"
#import "MMCollectionView.h"

@interface MMStickerView ()

@property (nonatomic, strong) MMCollectionView *collectionView;

@end

@implementation MMStickerView

- (void)baseInit {
    [super baseInit];
    
    [self viewInit];
}

- (void)viewInit {
    UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
    _collectionView = [[MMCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    [self addSubview:_collectionView];
    [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    _collectionView.backgroundColor = kRGB_FF;
}

@end
