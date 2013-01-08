//
//  TestViewController.h
//  ViewTest
//
//  Created by Aki on 2013/01/08.
//  Copyright (c) 2013年 Akihiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController

@property (weak, nonatomic)UIView *touchView;
@property (strong, nonatomic) UITapGestureRecognizer *tapGesture;

- (void)show;

@end
