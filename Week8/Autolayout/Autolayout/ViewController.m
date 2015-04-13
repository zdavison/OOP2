//
//  ViewController.m
//  Autolayout
//
//  Created by Zachary Davison on 13/04/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "ViewController.h"

#import "UIView+LayoutHelpers.h"

@interface UIColor (Names)

@property (nonatomic, readonly) NSString *zd_name;

@end

@implementation UIColor (Names)

- (NSString*)zd_name{
  if([self isEqual:[UIColor redColor]])   { return @"Red";    }
  if([self isEqual:[UIColor greenColor]]) { return @"Green";  }
  if([self isEqual:[UIColor yellowColor]]){ return @"Yellow"; }
  return nil;
}

@end

////////

@interface ViewController ()

@property (nonatomic, assign) NSInteger colorIndex;
@property (nonatomic, strong) NSArray *colors;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  _colorIndex = 0;
  _colors     = @[[UIColor redColor],[UIColor greenColor],[UIColor yellowColor]];
}

- (IBAction)buttonPressed:(id)sender{
  // Autolayout
  
  CGFloat original = _colorViewTopLayoutConstraint.constant;
  _colorViewTopLayoutConstraint.constant = - 400;
  [_colorView setNeedsUpdateConstraints];
  
  [UIView animateWithDuration:0.3 animations:^{
    [_colorView layoutIfNeeded];
  } completion:^(BOOL finished) {
    
    NSInteger nextColorIndex = _colorIndex + 1 >= _colors.count ? 0 : _colorIndex + 1;
    _colorIndex = nextColorIndex;
    
    _colorView.backgroundColor = _colors[nextColorIndex];
    _colorLabel.text = [_colors[nextColorIndex] zd_name];
    _colorViewTopLayoutConstraint.constant = original;
    
    [UIView animateWithDuration:0.3 animations:^{
      [_colorView layoutIfNeeded];
    }];
  }];
}

@end
