//
//  CustomButton.m
//  XibDemo
//
//  Created by fenglongteng on 16/5/3.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)setRadio:(CGFloat)radio
{
    self.layer.cornerRadius = radio;
    self.layer.masksToBounds = YES;
}


- (CGFloat)radio
{
    return self.layer.cornerRadius;
}

@end
