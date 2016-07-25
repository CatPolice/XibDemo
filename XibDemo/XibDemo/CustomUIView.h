//
//  CustomUIView.h
//  XibDemo
//
//  Created by fenglongteng on 16/4/30.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"
IB_DESIGNABLE
@interface CustomUIView : UIView
@property (weak, nonatomic) IBOutlet CustomButton *leftButton;

@end
