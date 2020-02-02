//
//  BlueViewController.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/2.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "BlueViewController.h"
#import "TapGestureRecognizer.h"

@interface BlueViewController ()

@property (nonatomic, strong) UIView *blueView;
@property (nonatomic, strong) UIButton *button;

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.blueView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    self.blueView.backgroundColor = [UIColor blueColor];
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button.frame = CGRectMake(self.blueView.frame.origin.x + 100, self.blueView.frame.origin.y + 60, 80, 30);
    [self.button setTitle:@"点我" forState:UIControlStateNormal];
    self.button.titleLabel.textColor = [UIColor blueColor];
    self.button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.blueView];
    self.blueView.center = self.view.center;
    [self.blueView addSubview:self.button];
    
    //给button添加一个target-action事件
    [self.button addTarget:self action:@selector(actionButtonTap) forControlEvents:UIControlEventTouchUpInside];
    
    TapGestureRecognizer *tap = [[TapGestureRecognizer alloc] initWithTarget:self action:@selector(actionTap)];
    //在button的父视图上添加手势识别器，点击button，会执行-actionButtonTap:
//    [self.blueView addGestureRecognizer:tap];
    //在button上添加手势识别器，点击button，会执行-actionTap:，即事件被手势识别器处理了
    [self.button addGestureRecognizer:tap];
}

- (void)actionButtonTap {
    NSLog(@"%s", __func__);
}

- (void)actionTap {
    NSLog(@"%s", __func__);
}

@end
