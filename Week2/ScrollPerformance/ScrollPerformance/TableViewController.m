//
//  ViewController.m
//  ScrollPerformance
//
//  Created by Zachary Davison on 23/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController()

@property (nonatomic, strong) NSMutableDictionary *cache;

@end

@implementation TableViewController

+ (NSMutableDictionary*)sharedCache {
  static NSMutableDictionary *sharedInstance = nil;
  static dispatch_once_t  onceToken;
  dispatch_once(&onceToken,
                ^{ sharedInstance = [NSMutableDictionary dictionary]; });
  return sharedInstance;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return 500;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
  return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageCell"];
  
  NSMutableDictionary *cache = [TableViewController sharedCache];
  
  NSString *selectedImage = nil;
  NSArray *imageNames = @[@"hemsworth", @"placeholder_hemsworth"];
  if(indexPath.row % 2 == 0){
    selectedImage = imageNames.firstObject;
  }else{
    selectedImage = imageNames.lastObject;
  }
  
  NSString *path = [[NSBundle mainBundle] pathForResource:selectedImage ofType:@"jpg"];
  
  UIImage *existingImage = [cache objectForKey:path];
  NSLog(@"EXISTING IMAGE CALLED: %@",existingImage);
  if(existingImage == nil){
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
      UIImage *image = [UIImage imageWithContentsOfFile:path];
      [cache setObject:image forKey:path];
      dispatch_async(dispatch_get_main_queue(), ^{
        cell.imageView.image = image;
      });
    });
  }else{
    cell.imageView.image = existingImage;
  }
  
  return cell;
}

@end
