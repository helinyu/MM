//
//  MMModifyCateogryView.h
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 17:32 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MMModifyCateogryView : MMBaseView

//@property (nonatomic, strong) NSArray<NSString *> *categoryTitles;
@property (nonatomic, strong, readonly) UICollectionView *bottomCategoryView;
@property (nonatomic, strong, readonly) UIView *contentView;

@end

NS_ASSUME_NONNULL_END
