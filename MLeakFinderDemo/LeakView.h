//
//  LeakView.h
//  MLeakFinderDemo
//
//  Created by ZeluLi on 2017/7/23.
//  Copyright © 2017年 zeluli. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^TapCallBack)(UIButton * sender);
@interface LeakView : UIView
- (void)setTapCallBack:(TapCallBack) callback;
@end
