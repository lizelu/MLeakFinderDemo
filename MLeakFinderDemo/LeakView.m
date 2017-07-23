//
//  LeakView.m
//  MLeakFinderDemo
//
//  Created by ZeluLi on 2017/7/23.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import "LeakView.h"

@interface LeakView()
@property (nonatomic, strong) TapCallBack callback;
@property (nonatomic, strong) UIButton *button;
@end

@implementation LeakView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        self.button = [[UIButton alloc] initWithFrame: self.bounds];
        [self.button setTitle:@"Tap Me" forState:UIControlStateNormal];
        [self addSubview:self.button];
        
        [self.button addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)setTapCallBack:(TapCallBack) callback {
    self.callback = callback;
}

- (void)tapButton:(UIButton *)sender {
    if (self.callback) {
        self.callback(sender);
    }
}


- (void)dealloc
{
    NSLog(@"LeakView - dealloc");
}

@end
