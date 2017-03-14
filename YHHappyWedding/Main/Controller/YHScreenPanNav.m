//
//  YHScreenPanNav.m
//  YHHappyWedding
//
//  Created by Cui yuhe on 17/3/14.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHScreenPanNav.h"

@interface YHScreenPanNav ()<UIGestureRecognizerDelegate>

@end

@implementation YHScreenPanNav

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.hidden = YES;
    
    [self setupScreenPan];
}


///全屏滑动
- (void)setupScreenPan{
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:pan];
    pan.delegate = self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        self.navigationBar.hidden = NO;
    }else{
        self.navigationBar.hidden = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated{
    if (self.viewControllers.count > 2) {
        self.navigationBar.hidden = NO;
    }else{
        self.navigationBar.hidden = YES;
    }
    return [super popViewControllerAnimated:animated];
}

#pragma mark ------------------------------------------
#pragma mark UIGestureRecognizerDelegate
//滑动时触发的代理方法.
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    //使栈顶控制器不可以滑动.不然会有假死bug
    return self.childViewControllers.count > 1;
    
}
@end
