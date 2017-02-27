//
//  ViewController.m
//  MYSDKTest
//
//  Created by 郑信鸿 on 17/2/23.
//  Copyright © 2017年 郑信鸿. All rights reserved.
//

#import "ViewController.h"
#import <MYSDK/MYSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[MYSDKManger defalutManager] openLog:YES];
    [MYSDKManger printTest];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
