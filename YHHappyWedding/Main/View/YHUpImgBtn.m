//
//  YHUpImgBtn.m
//  PrimaryArticle
//
//  Created by Cui yuhe on 17/2/3.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHUpImgBtn.h"

@implementation YHUpImgBtn

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
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor magentaColor] forState:UIControlStateSelected];
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    //图片
    CGFloat imgX = 0;
    CGFloat imgY = 3;
    CGFloat imgW = self.yh_width;
    CGFloat imgH = 20;//(self.yh_height-imgY) * 2/5;
    self.imageView.frame = CGRectMake(imgX, imgY, imgW, imgH);
    
    //title
    CGFloat labelX = 0;
    CGFloat labelY = CGRectGetMaxY(self.imageView.frame) + 2;
    CGFloat labelW = self.yh_width;
    CGFloat labelH = self.yh_height - labelY - 2;
    self.titleLabel.frame = CGRectMake(labelX, labelY, labelW, labelH);
    
}

@end
