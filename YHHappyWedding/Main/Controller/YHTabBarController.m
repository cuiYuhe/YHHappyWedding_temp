//
//  YHTabBarController.m
//  YHHappyWedding
//
//  Created by Cui yuhe on 17/3/13.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHTabBarController.h"
#import "YHNavigationController.h"
#import "YHHotelVc.h"
#import "YHHomeVc.h"
#import "YHWeddingVc.h"
#import "YHMasterVc.h"
#import "YHMeVc.h"
#import "YHTabBar.h"

@interface YHTabBarController ()<YHTabBarDelegate>

@end

@implementation YHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///设置自己的nav
    [self setupSelfNav];
    
    [self setupAllVcs];
    
    [self setupTabBar];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    UINavigationController *nav = self.navigationController;
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

#pragma mark ------------------------------------------
#pragma mark initialize
///设置自己的nav
- (void)setupSelfNav{
    self.navigationController.navigationBar.hidden = YES;
}


- (void)setupAllVcs{
    
    YHHomeVc *homeVc = [YHHomeVc new];
    homeVc.view.backgroundColor = YHRandomColor;
    YHNavigationController *homeNav = [[YHNavigationController alloc] initWithRootViewController:homeVc];
    [self addChildViewController:homeNav];
    
    YHHotelVc *hotelVc = [YHHotelVc new];
    hotelVc.view.backgroundColor = YHRandomColor;
    YHNavigationController *hotelNav = [[YHNavigationController alloc] initWithRootViewController:hotelVc];
    [self addChildViewController:hotelNav];
    
    
    YHMasterVc *masterVc = [YHMasterVc new];
    masterVc.view.backgroundColor = YHRandomColor;
    YHNavigationController *masterNav = [[YHNavigationController alloc] initWithRootViewController:masterVc];
    [self addChildViewController:masterNav];
    
    YHMeVc *meVc = [YHMeVc new];
    meVc.view.backgroundColor = YHRandomColor;
    YHNavigationController *meNav = [[YHNavigationController alloc] initWithRootViewController:meVc];
    [self addChildViewController:meNav];
    
}

- (void)setupTabBar{
    
    YHTabBar *tabBar = [YHTabBar tabBar];
    tabBar.frame = self.tabBar.frame;
    [self.tabBar removeFromSuperview];
    [self.view addSubview:tabBar];
    tabBar.delegate = self;
    
}


#pragma mark ------------------------------------------
#pragma mark YHTabBarDelegate
- (void)tabBar:(YHTabBar *)tabBar didClickItemIndex:(NSInteger)index{
    if (index == 2) {
        
        YHWeddingVc *weddingVc = [YHWeddingVc new];
        weddingVc.view.backgroundColor = YHRandomColor;
        [self.navigationController pushViewController:weddingVc animated:YES];
    }else{
        if (index > 2) {
            index--;
        }
        self.selectedIndex = index;
    }
}



@end



