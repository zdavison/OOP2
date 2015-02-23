//
//  NetworkManager.h
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface NetworkManager : AFHTTPRequestOperationManager

- (AFHTTPRequestOperation*)fetchTweets;

@end
