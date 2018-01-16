//
//  ViewController.m
//  CYDDemo
//
//  Created by FDH on 2018/1/16.
//  Copyright © 2018年 CYKJ. All rights reserved.
//

#import "ViewController.h"
#import <CYDoctor/CYDoctorApi.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [CYDoctorApi loginWithAccount:@"ceshicy" mobile:@"13234323453" success:^{
        NSLog(@"登录成功......");
    } fail:^{
        NSLog(@"登录失败......");
    }];
}

- (IBAction)redirectAction:(UIButton *)sender {
    [CYDoctorApi pushToNavigation:self.navigationController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
