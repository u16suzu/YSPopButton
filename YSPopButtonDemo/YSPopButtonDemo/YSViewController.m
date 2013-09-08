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
    
    
    // PopButton
    YSPopButton *pbtn = [[YSPopButton alloc]initWithFrame:CGRectMake(0, 0, 60, 60)];
    pbtn.center = CGPointMake(self.view.center.x, self.view.center.y - 100);
    UIImage *pbtn_img = [UIImage imageNamed:@"arrow_left"];
    [pbtn setImage:pbtn_img forState:UIControlStateNormal];
    pbtn.adjustsImageWhenHighlighted = NO;
    [self.view addSubview:pbtn];
    
    // FlatPopButton
    YSPopButton *flat_pbtn = [[YSPopButton alloc]initWithFrame:CGRectMake(0, 60, 60, 60)];
    flat_pbtn.center = self.view.center;
    UIImage *flat_pbtn_img = [UIImage imageNamed:@"arrow_left"];
    [flat_pbtn setFlatImage:flat_pbtn_img :[UIColor darkGrayColor]];
    flat_pbtn.adjustsImageWhenHighlighted = NO;
    [self.view addSubview:flat_pbtn];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
