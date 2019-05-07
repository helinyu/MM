//
//  UIView+MMAdd.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 13:59 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "UIView+MMAdd.h"

@implementation UIView (MMAdd)

- (void)addSubviews:(NSArray<UIView *> *)subViews {
    if (!subViews || subViews.count <=0) {
        return;
    }
    
    for (UIView *subView in subViews) {
        if ([subView isKindOfClass:[UIView class]]) {
            [self addSubview:subView];
        }
    }
}
@end
