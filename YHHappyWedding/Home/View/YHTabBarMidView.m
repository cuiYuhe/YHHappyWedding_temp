//
//  YHTabBarMidView.m
//  YHHappyWedding
//
//  Created by Cui yuhe on 17/3/14.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHTabBarMidView.h"

@implementation YHTabBarMidView

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setup];
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup{
    self.layer.cornerRadius = MAX(self.yh_width/2, self.yh_height)/2 +5;
    self.layer.masksToBounds = YES;
    
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGFloat lineWidth = 1;
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetGrayStrokeColor(ctx, .2, .5);
    CGContextAddArc(ctx, width/2, height/2, MIN(width, height)/2 - lineWidth, -M_PI, 0, 0);
    CGContextStrokePath(ctx);
}
@end
