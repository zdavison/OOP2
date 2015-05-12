//
//  ViewController.m
//  AutoLayout2
//
//  Created by Zachary Davison on 11/05/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSArray *objects = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
  UIView *customView = objects.firstObject;
  
  [self.view addSubview:customView];
}

@end
