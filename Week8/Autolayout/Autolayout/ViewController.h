//
//  ViewController.h
//  Autolayout
//
//  Created by Zachary Davison on 13/04/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *colorViewTopLayoutConstraint;

@property (nonatomic, weak) IBOutlet UIView   *colorView;
@property (nonatomic, weak) IBOutlet UILabel *colorLabel;

@end

