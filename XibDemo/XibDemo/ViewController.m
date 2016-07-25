//
//  ViewController.m
//  XibDemo
//
//  Created by fenglongteng on 16/4/30.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import "ViewController.h"
#import "CustomUIView.h"
#import "CustomView2.h"
#import "CustomView3.h"
#import "TwoViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet CustomUIView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //sb中复用xib
    UIButton *button=[self.view viewWithTag:400];
    [button addTarget:self action:@selector(buttomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [_customView.leftButton setTitle:@"leftButton" forState:UIControlStateNormal];
    [_customView.leftButton addTarget:self action:@selector(CustomUIViewOfleftButtonAction) forControlEvents:UIControlEventTouchUpInside];
    //手动创建视图 手动加xib
    CustomView2 *customView2 = [[CustomView2 alloc]initWithFrame:CGRectMake(0, 100, 120, 35)];
    [self.view addSubview:customView2];
    CustomView3 *customView3 = [[NSBundle mainBundle]loadNibNamed:@"CustomView3" owner:self options:nil].firstObject;
    customView3.frame = CGRectMake(100, 400, 70, 50);
    [customView3.mySwitch addTarget:self action:@selector(switchChangeAction:) forControlEvents:UIControlEventAllEvents];
    customView3.mySwitch.tintColor = [UIColor grayColor];
    [self.view addSubview:customView3];
}
-(void)CustomUIViewOfleftButtonAction{
    NSLog(@"======%s",__func__);
}
-(void)buttomAction:(UIButton*)sender{
    NSLog(@"tag值为400的按钮响应的事件有两个------");
    NSLog(@"%@", sender.allTargets.description);
    
}
-(void)switchChangeAction:(UISwitch*)sender{
    NSLog(@"开关打开还是关闭%ld",sender.isOn);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pushAciton:(id)sender {
    TwoViewController *twoVC = [[TwoViewController alloc]initWithNibName:@"TwoViewController" bundle:nil];
    [self showDetailViewController:twoVC sender:nil];;
}

@end
