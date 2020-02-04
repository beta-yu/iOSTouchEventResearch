//
//  View2.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/4.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "View2.h"

@implementation View2

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //获取触摸对象
    UITouch *touch = [touches anyObject];
    //获取前一个触摸点的位置
    CGPoint prePoint = [touch previousLocationInView:self];
    //获取当前触摸点位置
    CGPoint curPoint = [touch locationInView:self];
    CGFloat offsetX = curPoint.x - prePoint.x;
    CGFloat offsetY = curPoint.y - prePoint.y;
    
    self.transform = CGAffineTransformTranslate(self.transform, offsetX, offsetY);
}

@end
