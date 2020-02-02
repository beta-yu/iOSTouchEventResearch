//
//  TapGestureRecognizer.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/1/31.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "TapGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation TapGestureRecognizer

//手势识别器对事件的响应也是通过以下方法实现
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%s", __func__);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    NSLog(@"%s", __func__);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    NSLog(@"%s", __func__);
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    NSLog(@"%s", __func__);
}

@end
