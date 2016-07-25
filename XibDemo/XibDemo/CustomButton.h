//
//  CustomButton.h
//  XibDemo
//
//  Created by fenglongteng on 16/5/3.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import <UIKit/UIKit.h>


//加入这个代码才能在xib上显示属性效果
IB_DESIGNABLE

@interface CustomButton : UIButton

@property (nonatomic, assign) IBInspectable CGFloat  radio ;

@end
