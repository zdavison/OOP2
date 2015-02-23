//
//  Weather.h
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

@property(nonatomic, readonly)NSString *day;
@property(nonatomic, readonly)NSNumber *temperature;

- (id)initWithDictionary:(NSDictionary*)dictionary;

@end
