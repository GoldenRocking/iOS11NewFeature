//
//  ViewController.m
//  NewFeatureIniOS11
//
//  Created by guoruiqing on 2017/6/20.
//  Copyright © 2017年 xhhl. All rights reserved.
//

#import "ViewController.h"
#import "ColorSetViewController.h"
#import "RoundCornerViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _dataSource = [NSArray arrayWithObjects:@"1.Asserts_Color_Set",@"2.Round_Corner",nil];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
    
}

#pragma tableview delegate datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = _dataSource[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:[ColorSetViewController new] animated:YES];
            break;
        case 1:
            [self.navigationController pushViewController:[RoundCornerViewController new] animated:YES];
            break;
        case 2:
           // [self.navigationController pushViewController:[DashController new] animated:YES];
            break;
        case 3:
            //  [self.navigationController pushViewController:[GestureRotationController new] animated:YES];
            break;
        case 4:
            //  [self.navigationController pushViewController:[GestureSwipeController new] animated:YES];
            break;
            
        default:
            break;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
