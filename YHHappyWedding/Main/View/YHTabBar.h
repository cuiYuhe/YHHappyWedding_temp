//
//  YHTabBar.h
//  YHHappyWedding
//
//  Created by Cui yuhe on 17/3/13.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YHTabBar;

@protocol YHTabBarDelegate <NSObject>

@optional
///点击了tabBar, index最小值为0
- (void)tabBar:(YHTabBar *)tabBar didClickItemIndex:(NSInteger)index;

@end

@interface YHTabBar : UIView


/** delegate */
@property (nonatomic, weak) id<YHTabBarDelegate> delegate;



+ (__kindof YHTabBar *)tabBar;
@end
