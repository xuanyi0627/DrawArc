//
//  XXArcView.m
//  DrawArc
//
//  Created by 宣佚 on 2019/10/22.
//  Copyright © 2019 宣佚. All rights reserved.
//

#import "XXArcView.h"

@implementation XXArcView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setUserInteractionEnabled:NO];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    float x = rect.origin.x; // 起点横坐标
    float y = rect.origin.y; // 起点纵坐标
    float w = rect.size.width; // 绘制图像宽度
    float h = rect.size.height; // 绘制图像高度
    // 一个不透明类型的Quartz 2D绘画环境,相当于一个画布,你可以在上面任意绘画
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 画笔线的颜色
    CGContextSetRGBStrokeColor(context,0,0,0,1);
    // 线的宽度
    CGContextSetLineWidth(context, 1.0);
    // 填充颜色
    UIColor *fullColor = [UIColor whiteColor];
    CGContextSetFillColorWithColor(context, fullColor.CGColor);
    // 绘制路径
    CGContextMoveToPoint(context,x,y);
    CGContextAddLineToPoint(context,x,h);
    CGContextAddLineToPoint(context,w,h);
    CGContextAddLineToPoint(context,w,y);
    
//    CGContextAddArcToPoint(CGContextRef cg_nullable c, CGFloat x1, CGFloat y1, CGFloat x2, CGFloat y2, CGFloat radius)
    CGFloat x1 = w/2.0;
    CGFloat y1 = y+30;
    CGFloat x2 = x;
    CGFloat y2 = y;
    CGFloat radius = 100;
    CGContextAddArcToPoint(context,x1,y1,x2,y2,radius);
    CGContextAddLineToPoint(context,x,y);
    // CGContextStrokePath(context); //只画线
    // 绘制路径加填充
    CGContextDrawPath(context, kCGPathFillStroke); //画线并填充
}

@end
