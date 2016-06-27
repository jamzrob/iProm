//
//  ViewController.m
//  prom
//
//  Created by James Raubenheimer on 5/2/16.
//  Copyright © 2016 jamesraub. All rights reserved.
//

#import "ViewController.h"


#import <AVFoundation/AVFoundation.h>




@interface ViewController ()
{
     AVAudioPlayer *_audioPlayer;
    AVAudioPlayer *_saudioPlayer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Construct URL to sound file
    NSString *path = [NSString stringWithFormat:@"%@/happyy.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    

    
    // Construct URL to sound file
    NSString *spath = [NSString stringWithFormat:@"%@/sad_sad.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *ssoundUrl = [NSURL fileURLWithPath:spath];
    
    // Create audio player object and initialize with URL to sound
    _saudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:ssoundUrl error:nil];
    
    
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)yesButton:(id)sender {
  [_audioPlayer play];
    
    
    
    
   
  }

- (IBAction)noButton:(id)sender {
    [_saudioPlayer play];
    
}


@end
