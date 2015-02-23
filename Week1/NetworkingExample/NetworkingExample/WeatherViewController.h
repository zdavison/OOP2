//
//  ViewController.h
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherViewModel.h"

@interface WeatherViewController : UIViewController

@property (nonatomic, strong)WeatherViewModel *viewModel;

@property (nonatomic, weak) IBOutlet UILabel *temperatureLabel;
@property (nonatomic, weak) IBOutlet UILabel *averageTemperatureLabel;

@end

