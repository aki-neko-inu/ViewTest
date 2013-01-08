//
//  ViewController.m
//  ViewTest
//
//  Created by Aki on 2013/01/08.
//  Copyright (c) 2013年 Akihiro. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //タップ
    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTouch:)];
    [self.aView addGestureRecognizer:self.tapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapTouch:(id)sender
{
    TestViewController *test = [[TestViewController alloc] init];
    [test show];
}

@end
