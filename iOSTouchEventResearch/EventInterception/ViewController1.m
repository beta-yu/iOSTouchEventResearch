//
//  ViewController1.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/3.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "ViewController1.h"
#import "TabBar.h"
#import "Masonry.h"
#import "Button1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    TabBar *tabBar = [[TabBar alloc] init];
    [self.view addSubview:tabBar];
    
    [tabBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.height.mas_equalTo(70);
    }];
    
    Button1 *circleButton = [Button1 buttonWithType:UIButtonTypeCustom];
    circleButton.frame = CGRectMake(self.view.frame.size.width / 2 - 30, tabBar.frame.origin.y - 30, 60, 60);
    circleButton.layer.cornerRadius = 30;
    circleButton.backgroundColor = [UIColor greenColor];
    [tabBar addSubview:circleButton];
    tabBar.circleButton = circleButton;
}



@end
