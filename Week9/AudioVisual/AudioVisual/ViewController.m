//
//  ViewController.m
//  AudioVisual
//
//  Created by Zachary Davison on 20/04/2015.
//  Copyright (c) 2015 ZD. All rights reserved.
//

#import "ViewController.h"

@import AVFoundation;

@interface ViewController ()

@property (nonatomic, strong) AVPlayer      *player;
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;


@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSURL *videoPath = [[NSBundle mainBundle] URLForResource:@"Untitled" withExtension:@"aif"];
  
  _player = [[AVPlayer alloc] initWithURL:videoPath];
  
  AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:_player];
  playerLayer.frame = CGRectMake(0, 0, 200, 200);
  [_view.layer addSublayer:playerLayer];
  [_player play];
}

@end
