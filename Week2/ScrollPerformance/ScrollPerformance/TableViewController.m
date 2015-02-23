//
//  ViewController.m
//  ScrollPerformance
//
//  Created by Zachary Davison on 23/02/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return 500;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
  return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageCell"];
  NSString *path = [[NSBundle mainBundle] pathForResource:@"hemsworth" ofType:@"jpg"];
  cell.imageView.image = [UIImage imageWithContentsOfFile:path];
  
  return cell;
  
}

@end
