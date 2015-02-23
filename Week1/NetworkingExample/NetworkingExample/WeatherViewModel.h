//
//  WeatherViewModel.h
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"

@interface WeatherViewModel : NSObject

@property (nonatomic, strong) Weather *model;

@property (nonatomic, readonly) NSString *temperatureString;
@property (nonatomic, readonly) NSString *averageTemperatureString;

- (id)initWithModel:(Weather*)model;

@end
