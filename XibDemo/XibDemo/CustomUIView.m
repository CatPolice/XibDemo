//
//  CustomUIView.m
//  XibDemo
//
//  Created by fenglongteng on 16/4/30.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import "CustomUIView.h"


@implementation CustomUIView
//当试图控制器要在xib中加载时才用它，切记不能再View的Custom class里关联类，要在file'ower里关联类。不然要崩溃的。
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    
    if ([super initWithCoder:aDecoder]) {
        
        UIView *contentView =[[[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] lastObject];
        [self addSubview:contentView];
        self.translatesAutoresizingMaskIntoConstraints=NO;
        contentView.translatesAutoresizingMaskIntoConstraints=NO;
        //这里不能没有约束 及时xib里面有约束 如果这里不写约束，出来的效果也是奇形怪状，只有在xib 之前尝试用masonry布局修改这部分代码但是没有成功。
        [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeLeft multiplier: 1.0 constant: 0]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeRight multiplier: 1.0 constant: 0]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeTop multiplier: 1.0 constant: 0]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeBottom multiplier: 1.0 constant: 0]];
    }
    //这里改属性要放在加载nib之后
    _leftButton.backgroundColor = [UIColor grayColor];
    return self;
}
- (IBAction)centerButtonAction:(id)sender {
    NSLog(@"%s",__func__);
}
- (IBAction)leftButtonAction:(id)sender {
     /*添加处理选中图像代码*/
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
