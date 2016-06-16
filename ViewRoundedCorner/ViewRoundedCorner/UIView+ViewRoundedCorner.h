//
//  ViewRoundedCorner.h
//  离屏渲染
//
//  Created by shengxin on 16/6/16.
//  Copyright © 2016年 shengxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(ViewRoundedCorner)

- (void)kt_addCorner:(CGFloat)radius;
- (void)kt_addCornerRadius:(CGFloat)radius andBorderWidth:(CGFloat)borderWidth andBackGroundColor:(UIColor*)backgroundColor andBorderColor:(UIColor*)borderColor;

@end
