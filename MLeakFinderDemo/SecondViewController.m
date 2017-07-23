//
//  SecondViewController.m
//  MLeakFinderDemo
//
//  Created by ZeluLi on 2017/7/23.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import "SecondViewController.h"
#import "LeakView.h"

@interface SecondViewController ()
@property (nonatomic, strong) LeakView *leakView;
@property (nonatomic, strong) UIButton *callbackButton;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.leakView = [[LeakView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //__weak typeof(self) weak_self = self;
    [self.leakView setTapCallBack:^(UIButton *sender) {
        NSLog(@"Call Back");
        [self fetchCallBackButton:sender];
    }];
    
    [self.view addSubview:self.leakView];
    
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
