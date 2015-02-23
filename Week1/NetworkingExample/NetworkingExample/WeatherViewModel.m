//
//  WeatherViewModel.m
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "WeatherViewModel.h"

@implementation WeatherViewModel

- (id)initWithModel:(Weather*)model{
  self = [super init];
  if(!self) { return nil; }
  
  _model = model;
  
  return self;
}

- (NSString*)temperatureString {
  return [NSString stringWithFormat:@"The temperature is %@", _model.temperature];
}

- (NSString*)averageTemperatureString {
  return @"The average is whatever";
}

@end
