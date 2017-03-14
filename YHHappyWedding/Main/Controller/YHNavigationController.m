//
//  YHNavigationController.m
//  YHHappyWedding
//
//  Created by Cui yuhe on 17/3/13.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHNavigationController.h"

@interface YHNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation YHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupScreenPan];
}


///全屏滑动
- (void)setupScreenPan{
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:pan];
    pan.delegate = self;
}


#pragma mark ------------------------------------------
#pragma mark UIGestureRecognizerDelegate
//滑动时触发的代理方法.
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    //使栈顶控制器不可以滑动.不然会有假死bug
    return self.childViewControllers.count > 1;
    
}

@end
