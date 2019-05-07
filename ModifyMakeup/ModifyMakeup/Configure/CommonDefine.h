//
//  CommonDefine.h
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 14:34 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#ifndef CommonDefine_h
#define CommonDefine_h
#import <UIKit/UIKit.h>

typedef struct {
    CGFloat molecule;
    CGFloat denominator;
} FractionalExpression;

FractionalExpression FractionalExpressionMake(CGFloat molecule, CGFloat denominator);

typedef NS_ENUM(NSUInteger, MMPhotoLayerRatioHWType) {
    MMPhotoLayerRatioHWType4_3, //3:4 默认
    MMPhotoLayerRatioHWType16_9,
    MMPhotoLayerRatioHWType1_1,
    MMPhotoLayerRatioHWTypeCircular, // 圆形
};

#define kRatio4_3 FractionalExpressionMake(4, 3)
#define kRatio16_9 FractionalExpressionMake(16, 9)
#define kRatio1_1 FractionalExpressionMake(1, 1)
//#define kRatioCricular FractionalExpressionMake(4, 3)


@interface CommonDefine : NSObject

@end


#endif /* CommonDefine_h */
