//
//  ViewController.m
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "WeatherViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "NetworkManager.h"

@interface WeatherViewController ()

@end

@implementation WeatherViewController

- (void)viewDidLoad{
  
  AFHTTPRequestOperation *operation = [[NetworkManager manager] fetchTweets];
  [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
    
    Weather *weather            = [[Weather alloc] initWithDictionary:responseObject];
    WeatherViewModel *viewModel = [[WeatherViewModel alloc] initWithModel:weather];
    
    self.viewModel = viewModel;
    
  } failure:nil];
  
}

- (void)setViewModel:(WeatherViewModel *)viewModel{
  
  _temperatureLabel.text        = viewModel.temperatureString;
  _averageTemperatureLabel.text = viewModel.averageTemperatureString;
  
}

@end
