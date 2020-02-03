//
//  TabBar.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/3.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "TabBar.h"

@implementation TabBar

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
    return [super hitTest:point withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
    //将触摸点坐标转换到在CircleButton上的坐标
    CGPoint circlePoint = [self convertPoint:point toView:self.circleButton];
    if ([self.circleButton pointInside:circlePoint withEvent:event]) {
        return YES;
    }
    return [super pointInside:point withEvent:event];
}

@end
