//
//  ViewRoundedCorner.m
//  离屏渲染
//
//  Created by shengxin on 16/6/16.
//  Copyright © 2016年 shengxin. All rights reserved.
//

#import "UIView+ViewRoundedCorner.h"
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@implementation UIView(ViewRoundedCorner)


- (void)kt_addCorner:(CGFloat)radius{
    [self kt_addCornerRadius:radius andBorderWidth:1.0 andBackGroundColor:[UIColor clearColor] andBorderColor:[UIColor blackColor]];
}

- (void)kt_addCornerRadius:(CGFloat)radius andBorderWidth:(CGFloat)borderWidth andBackGroundColor:(UIColor*)backgroundColor andBorderColor:(UIColor*)borderColor{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[self kt_drawRectWithRoundedCorner:radius andBorderWidth:borderWidth andBackgroundColor:backgroundColor andBorderColor:borderColor]];
    [self insertSubview:imageView atIndex:0];
}

- (UIImage*)kt_drawRectWithRoundedCorner:(CGFloat)radius andBorderWidth:(CGFloat)borderWidth andBackgroundColor:(UIColor*)backgroundColor andBorderColor:(UIColor*)BorderColor{
    CGSize size = CGSizeMake(((self.bounds.size.width)), self.bounds.size.height);
    CGFloat halfBorderWidth = (borderWidth / 2.0);
    
    UIGraphicsBeginImageContextWithOptions(size, false, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, borderWidth);
    CGContextSetStrokeColorWithColor(context, BorderColor.CGColor);
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
    
    CGFloat width = size.width;
    CGFloat height = size.height;
    CGContextMoveToPoint(context, width - halfBorderWidth, radius + halfBorderWidth);  // 开始坐标右边开始
    CGContextAddArcToPoint(context, width - halfBorderWidth, height - halfBorderWidth, width - radius - halfBorderWidth, height - halfBorderWidth, radius);  // 右下角角度
    CGContextAddArcToPoint(context, halfBorderWidth, height - halfBorderWidth, halfBorderWidth, height - radius - halfBorderWidth, radius); // 左下角角度
    CGContextAddArcToPoint(context, halfBorderWidth, halfBorderWidth, width - halfBorderWidth, halfBorderWidth, radius); // 左上角
    CGContextAddArcToPoint(context, width - halfBorderWidth, halfBorderWidth, width - halfBorderWidth, radius + halfBorderWidth, radius); // 右上角
    
    CGContextDrawPath(UIGraphicsGetCurrentContext(),kCGPathFill);
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return output;
}







@end
