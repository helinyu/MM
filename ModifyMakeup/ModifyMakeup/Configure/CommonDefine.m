//
//  CommonDefine.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 14:40 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "CommonDefine.h"

FractionalExpression FractionalExpressionMake(CGFloat molecule, CGFloat denominator)
{
    FractionalExpression fe;
    fe.molecule = molecule;
    fe.denominator = denominator;
    return fe;
}

@implementation CommonDefine

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}


@end
