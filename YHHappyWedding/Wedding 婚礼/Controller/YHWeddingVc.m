//
//  YHWeddingVc.m
//  YHHappyWedding
//
//  Created by Cui yuhe on 17/3/13.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHWeddingVc.h"

@interface YHWeddingVc ()

@end

@implementation YHWeddingVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"wedding";
    
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.navigationController setNavigationBarHidden:NO];
}

@end
