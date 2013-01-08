//
//  TestViewController.m
//  ViewTest
//
//  Created by Aki on 2013/01/08.
//  Copyright (c) 2013年 Akihiro. All rights reserved.
//

#import "TestViewController.h"
#import "AppDelegate.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)show
{
    self.view.backgroundColor = [UIColor blackColor];
    self.view.frame = CGRectMake(50, 150, 200, 200);
    
    UIView *touchView = [[UIView alloc] initWithFrame:CGRectMake(50, 150, 200, 200)];
    touchView.backgroundColor = [UIColor blueColor];

    //タップ
    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTouch:)];
    [touchView addGestureRecognizer:self.tapGesture];

    NSLog(@"self.view   %f,%f,%f,%f",self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    NSLog(@"touchView   %f,%f,%f,%f",touchView.frame.origin.x, touchView.frame.origin.y, touchView.frame.size.width, touchView.frame.size.height);

    [self.view addSubview:touchView];

    //↓のコメントを外すとtopTouchが動くようになる
/*    CGPoint point = [touchView convertPoint:touchView.frame.origin fromView:self.view];
    CGRect touchRect = touchView.frame;
    touchRect.origin = point;
    touchView.frame = touchRect;
*/ 

    AppDelegate *myDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow *appWindow = myDelegate.window;
    [appWindow.rootViewController.view addSubview:self.view];

    
    //[underView addSubview:self.view];
    
    NSLog(@"self.view   %f,%f,%f,%f",self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    NSLog(@"touchView   %f,%f,%f,%f",touchView.frame.origin.x, touchView.frame.origin.y, touchView.frame.size.width, touchView.frame.size.height);
}

- (void)tapTouch:(id)sender
{
    NSLog(@"サブViewのtapイベント");
}

@end
