//
//  NetworkManager.m
//  NetworkingExample
//
//  Created by Zachary Davison on 16/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager

- (AFHTTPRequestOperation*)fetchTweets{
  
  NSURL *URL = [NSURL URLWithString:@"https://gist.githubusercontent.com/gnip/764239/raw/6c6a2297f3e4e29a626f07db0c57b45af7d7e5d7/Twitter%20(json%20format).js"];
  NSURLRequest *request = [NSURLRequest requestWithURL:URL];
  AFHTTPRequestOperation *operation = [self HTTPRequestOperationWithRequest:request success:nil failure:nil];
  operation.responseSerializer = self.responseSerializer;
  return operation;
  
}

@end
