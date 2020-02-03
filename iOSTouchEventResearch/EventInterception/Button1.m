//
//  Button1.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/3.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "Button1.h"

@implementation Button1

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
    return [super hitTest:point withEvent:event];
}

@end
