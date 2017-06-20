//
//  ColorSetViewController.m
//  NewFeatureIniOS11
//
//  Created by guoruiqing on 2017/6/20.
//  Copyright © 2017年 xhhl. All rights reserved.
//

#import "ColorSetViewController.h"

@interface ColorSetViewController ()

@end

@implementation ColorSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Color_Set";
    
    /*
    if (@available(iOS 11.0, *)) {
        self.view.backgroundColor = [UIColor colorNamed:@"grass"];
    } else {
        // Fallback on earlier versions
        self.view.backgroundColor = [UIColor redColor];
    }
     */
    
    UIImageView *normal = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cluck"]];
    normal.center = CGPointMake(100, 150);
    
    [self.view addSubview:normal];
    
    UIImageView *big = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cluck"]];
    big.frame = CGRectMake(50, 250, normal.bounds.size.width * 2, normal.bounds.size.height * 2);
    
    [self.view addSubview:big];
     
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
