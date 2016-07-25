//
//  CustomView3.m
//  XibDemo
//
//  Created by fenglongteng on 16/7/1.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import "CustomView3.h"

@implementation CustomView3
//其一UIView关联类（不是file'ower），其二CustomView3创建时用nib加载。
- (IBAction)switchChange:(id)sender {
    NSLog(@"%s",__FUNCTION__);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
