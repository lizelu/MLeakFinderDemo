//
//  SecondViewController.m
//  MLeakFinderDemo
//
//  Created by ZeluLi on 2017/7/23.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import "ThirdViewController.h"
#import "LeakView.h"

@interface ThirdViewController ()
@property (nonatomic, strong) UIButton *callbackButton;
@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    LeakView * leakView = [[LeakView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //__weak typeof(self) weak_self = self;
    [leakView setTapCallBack:^(UIButton *sender) {
        NSLog(@"Call Back");
        [self fetchCallBackButton:sender];
    }];
    
    [self.view addSubview:leakView];
    
}

-(void)fetchCallBackButton:(UIButton *) sender {
    self.callbackButton = sender;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"SecondViewController -- delloc");
}

@end
