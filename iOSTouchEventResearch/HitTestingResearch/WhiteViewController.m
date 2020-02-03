//
//  WhiteViewController.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/3.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "WhiteViewController.h"
#import "AView.h"
#import "BView.h"
#import "CView.h"
#import "DView.h"

@interface WhiteViewController ()

@end

@implementation WhiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    AView *aView = [[AView alloc] initWithFrame:CGRectMake(10, 100, 300, 200)];
    aView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:aView];
    
    CView *cView = [[CView alloc] initWithFrame:CGRectMake(20, 20, 200, 150)];
    cView.backgroundColor = [UIColor greenColor];
    [aView addSubview:cView];
    
    BView *bView = [[BView alloc] initWithFrame:CGRectMake(30, 350, 300, 200)];
    bView.backgroundColor = [UIColor redColor];
    [self.view addSubview:bView];
    
    DView *dView = [[DView alloc] initWithFrame:CGRectMake(20, 20, 200, 150)];
    dView.backgroundColor = [UIColor yellowColor];
    [bView addSubview:dView];
}



@end
