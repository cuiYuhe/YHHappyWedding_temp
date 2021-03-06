//
//  MBProgressHUD+YH.h
//  IceManInMay
//
//  Created by Cui yuhe on 16/4/24.
//  Copyright © 2016年 Cui yuhe. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (YH)
//摘自MBProgressHUD (MJ)
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;


+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;
@end
