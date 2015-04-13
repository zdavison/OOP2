//
//  UIView+LayoutHelpers.m
//  Autolayout
//
//  Created by Zachary Davison on 13/04/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "UIView+LayoutHelpers.h"

@implementation UIView (LayoutHelpers)

@dynamic top;

- (CGFloat)top{
  return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top{
  CGRect newFrame = self.frame;
  newFrame.origin.y = top;
  self.frame = newFrame;
}

@end
