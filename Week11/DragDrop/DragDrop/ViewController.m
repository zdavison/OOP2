//
//  ViewController.m
//  DragDrop
//
//  Created by Zachary Davison on 11/05/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *animatingView;

@end

@class MyCustomClass;

@implementation ViewController

- (void)viewDidLoad{
  
  _animatingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
  _animatingView.backgroundColor = [UIColor redColor];
  
  [self.view addSubview:_animatingView];
  
  [self animateBox];

  
}

@end
