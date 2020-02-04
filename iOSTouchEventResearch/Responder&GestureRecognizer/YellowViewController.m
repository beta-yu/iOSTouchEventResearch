//
//  YellowViewController.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/2.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "YellowViewController.h"
#import "YellowView.h"
#import "TapGestureRecognizer.h"

@interface YellowViewController ()

@property (nonatomic, strong) YellowView *yellowView;

@end

@implementation YellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view.backgroundColor = [UIColor whiteColor];
    self.yellowView = [[YellowView alloc] init];
    self.yellowView.bounds = CGRectMake(0, 0, 300, 200);
    self.yellowView.center = self.view.center;
    [self.view addSubview:self.yellowView];
    
    //单击手势识别
//    TapGestureRecognizer *tap = [[TapGestureRecognizer alloc] initWithTarget:self action:@selector(actionTap)];
//    [self.yellowView addGestureRecognizer:tap];
    //手势识别器比UIResponder具有更高的事件响应优先级！！
    //手势识别成功识别了事件，则Application会取消YellowView对事件的响应，YellowView不再接收事件。
    
    //滑动手势识别
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(actionPan)];
    [self.yellowView addGestureRecognizer:pan];
    //在一开始滑动的过程中，手势识别器处在识别手势阶段，滑动产生的连续事件既会传递给手势识别器又会传递给YellowView，
    //因此YellowView的 touchesMoved:withEvent: 在开始一段时间内会持续调用；当手势识别器成功识别了该滑动手势时，
    //手势识别器的action开始调用，同时通知Application取消YellowView对事件的响应。之后仅由滑动手势识别器接收事件并响应，YellowView不再接收事件。
}

//手势识别器成功识别事件后调用该方法，状态为UIGestureRecognizerStateRecognized
- (void)actionTap {
    NSLog(@"View Taped!");
}

- (void)actionPan {
    NSLog(@"View Paned!");
}


//先总结一下手势识别器与UIResponder对于事件响应的联系：

//当触摸发生或者触摸的状态发生变化时，Window都会传递事件寻求响应。
//
//Window先将绑定了触摸对象的事件传递给触摸对象上绑定的手势识别器，再发送给触摸对象对应的hit-tested view。
//手势识别器识别手势期间，若触摸对象的触摸状态发生变化，事件都是先发送给手势识别器再发送给hit-test view。
//手势识别器若成功识别了手势，则通知Application取消hit-tested view对于事件的响应，并停止向hit-tested view发送事件；
//若手势识别器未能识别手势，而此时触摸并未结束，则停止向手势识别器发送事件，仅向hit-test view发送事件。
//若手势识别器未能识别手势，且此时触摸已经结束，则向hit-tested view发送end状态的touch事件以停止对事件的响应。

@end
