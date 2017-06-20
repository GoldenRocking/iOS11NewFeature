//
//  RoundCornerViewController.m
//  NewFeatureIniOS11
//
//  Created by guoruiqing on 2017/6/20.
//  Copyright © 2017年 xhhl. All rights reserved.
//

#import "RoundCornerViewController.h"

@interface RoundCornerViewController ()

@end

@implementation RoundCornerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Round_Corner";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view0 = [[UIView alloc]initWithFrame:CGRectMake(30, 100, 200, 40)];
    view0.backgroundColor = [UIColor grayColor];
    view0.layer.cornerRadius = 15;
    //view0.clipsToBounds = YES;
    view0.layer.masksToBounds = YES;
    [self.view addSubview:view0];
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(30, 180, 200, 40)];
    view2.backgroundColor = [UIColor grayColor];
    view2.layer.cornerRadius = 15;
    view2.layer.masksToBounds = YES;
    if (@available(iOS 11.0, *)) {
        view2.layer.maskedCorners = kCALayerMaxXMaxYCorner | kCALayerMaxXMinYCorner;
    } else {
        // Fallback on earlier versions
    }
    [self.view addSubview:view2];
    
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(30, 250, 200, 100)];
    view1.backgroundColor = [UIColor purpleColor];
    view1.layer.cornerRadius = 50;
    view1.clipsToBounds = YES;
    [self.view addSubview:view1];
    
    
    [UIView animateWithDuration:2 delay:1.0 options:UIViewAnimationOptionCurveLinear animations:^{
        view1.layer.cornerRadius = 0;
    } completion:nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
