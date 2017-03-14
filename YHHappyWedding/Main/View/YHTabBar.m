//
//  YHTabBar.m
//  YHHappyWedding
//
//  Created by Cui yuhe on 17/3/13.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHTabBar.h"
#import "YHTabBarMidView.h"

@interface YHTabBar()
/** 选中的btn */
@property (nonatomic, assign) UIButton *selectBtn;
@property (weak, nonatomic) IBOutlet YHTabBarMidView *midView;
@end

@implementation YHTabBar

+ (YHTabBar *)tabBar{
    return [YHTabBar yh_viewFromXib];
}


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
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(weddingTap:)];
    [self.midView addGestureRecognizer:tapGes];
}



#pragma mark ------------------------------------------
#pragma mark event
- (IBAction)itemBtnClick:(UIButton *)sender {
    
    self.selectBtn.selected = NO;
    sender.selected = YES;
    self.selectBtn = sender;
    
    if ([self.delegate respondsToSelector:@selector(tabBar:didClickItemIndex:)]) {
        [self.delegate tabBar:self didClickItemIndex:sender.tag];
    }
}

- (void)weddingTap:(UITapGestureRecognizer *)tapGes {
    if ([self.delegate respondsToSelector:@selector(tabBar:didClickItemIndex:)]) {
        [self.delegate tabBar:self didClickItemIndex:tapGes.view.tag];
    }
}
@end
