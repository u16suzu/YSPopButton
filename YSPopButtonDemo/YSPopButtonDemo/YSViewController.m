//
//  YSViewController.m
//  YSPopButtonDemo
//
//  Created by u16suzu on 2013/09/08.
//  Copyright (c) 2013年 u16suzu. All rights reserved.
//

#import "YSViewController.h"
#import <YSPopButton.h>

@interface YSViewController ()

@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    YSPopButton *btn = [[YSPopButton alloc]initWithFrame:CGRectMake(0, 0, 60, 60)];
    [self.view addSubview:btn];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
