//
//  Weather.m
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "Weather.h"

@implementation Weather

- (id)initWithDictionary:(NSDictionary*)dictionary{
  self = [super init];
  if(!self) { return nil; }
  
  _day          = dictionary[@"day"];
  _temperature  = dictionary[@"temperature"];
  
  return self;
}

@end
