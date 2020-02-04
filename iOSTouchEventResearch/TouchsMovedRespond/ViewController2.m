//
//  ViewController2.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/4.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "ViewController2.h"
#import "View2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    View2 *view = [[View2 alloc] initWithFrame:CGRectMake(20, 200, 300, 200)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
}

@end
