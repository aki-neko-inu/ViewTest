//
//  ViewController.h
//  ViewTest
//
//  Created by Aki on 2013/01/08.
//  Copyright (c) 2013年 Akihiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) UITapGestureRecognizer *tapGesture;

@property (weak, nonatomic) IBOutlet UIView *aView;

@end
