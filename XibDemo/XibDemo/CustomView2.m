//
//  CustomView2.m
//  XibDemo
//
//  Created by fenglongteng on 16/7/1.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import "CustomView2.h"

@implementation CustomView2
//绑定file's owner
-(instancetype)initWithFrame:(CGRect)frame{
    if ([super initWithFrame:frame]) {
        UIView *subView = [[NSBundle mainBundle]loadNibNamed:@"CustomView2" owner:self options:nil].firstObject;
        [self addSubview:subView];
        subView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame));
    }
    //加载了过后才可以修改属性
    self.frame = frame;
    self.segementController.backgroundColor = [UIColor redColor];
    return self;
}
- (IBAction)segementAction:(UISegmentedControl*)sender {
    NSLog(@"%s",__func__);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
