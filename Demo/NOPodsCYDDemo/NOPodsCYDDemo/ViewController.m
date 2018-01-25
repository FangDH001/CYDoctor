//
//  ViewController.m
//  NOPodsCYDDemo
//
//  Created by FDH on 2018/1/15.
//  Copyright © 2018年 CYKJ. All rights reserved.
//

#import "ViewController.h"
#import <CYDoctor/CYDoctorApi.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [CYDoctorApi setEnvironment:CYDEnvironment_Develop];
    [CYDoctorApi loginWithAccount:@"ceshicy" mobile:@"13234323453"];
}

- (IBAction)redirectVc:(UIButton *)sender {
    [CYDoctorApi pushToNavigation:self.navigationController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
