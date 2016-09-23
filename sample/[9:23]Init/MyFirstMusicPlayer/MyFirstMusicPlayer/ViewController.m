//
//  ViewController.m
//  MyFirstMusicPlayer
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "ViewController.h"

@interface ViewController ()    <AVAudioPlayerDelegate>

@property AVAudioPlayer *player;
@property UIButton *playButton;
@property UILabel *timeLabel;
@property NSTimer *timer;

-(void)displayTime :(NSTimeInterval)currentTime duration:(NSTimeInterval)duration;

@end

@implementation ViewController

#pragma mark - Life Cycle


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    CGRect labelFrame = CGRectMake(30.0f, 30.0f, 250.f, 30.f);
    CGRect buttonFrame = CGRectMake(30.f, 70.0f, 50.f, 30.f);
    
    self.playButton = [[UIButton alloc]initWithFrame:buttonFrame];
    
    [self.playButton setTitle:@"Play" forState:UIControlStateNormal];
    
    [self.playButton setTitle:@"Pause" forState:UIControlStateSelected];
    
    [self.playButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [self.playButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    
    [self.playButton setBackgroundColor:[UIColor yellowColor]];
    
    [self.playButton addTarget:self action:@selector(clickPlayButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.playButton];
    
    self.timeLabel = [[UILabel alloc]initWithFrame:labelFrame];
    
    [self.timeLabel setTextColor:[UIColor brownColor]];
    
    [self.view addSubview:self.timeLabel];
    
    [self displayTime:0
             duration:0];
    
    NSURL *soundFileURL = [[NSBundle mainBundle]URLForResource:@"01. 우주를 줄게" withExtension:@"mp3"];
    
    self.player = [[AVAudioPlayer alloc]initWithContentsOfURL:soundFileURL error:nil];
    
    [self.player setDelegate:self];
    
}

#pragma mark - Display Something

-(void)displayTime:(NSTimeInterval)currentTime duration:(NSTimeInterval)duration{
    
    NSInteger currentMin = (NSInteger)(currentTime / 60.0);
    NSInteger currentSec = ((NSInteger)currentTime % 60);
    
    NSInteger durationMin = (NSInteger)(duration /60.0);
    NSInteger durationSec = ((NSInteger)duration % 60);
    
    NSString *timeString = [[NSString alloc]initWithFormat:@"%02ld:%02ld / %02ld:%02ld",currentMin,currentSec,durationMin,durationSec];
    
    [self.timeLabel setText:timeString];
}

#pragma mark - Button Methods

- (void)clickPlayButton:(UIButton *)sender{
    
    BOOL currentSelectedState = sender.selected;
    
    [sender setSelected:!currentSelectedState];
    
    if(sender.isSelected == YES){
        [self.player play];
        
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                                      target:self
                                                    selector:@selector(checkTime)
                                                    userInfo:nil
                                                     repeats:YES];
        [self.timer fire];
        
    }else{
        
        [self.player pause];
        
        [self.timer invalidate];
        
        self.timer = nil;
    }
    
    
}

-(void)checkTime{
    if((self.player.duration >0) && (self.player.currentTime >0)){
        
        [self displayTime:self.player.currentTime
                 duration:self.player.duration];
    }
    return ;
    
    
}

#pragma mark - AVAudioPlayerDelegate Methods

-(void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"알람"
                                                                   message:@"음원 파일을 디코딩 하는데 문제가 발생했습니다."
                                                           preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil]];
    
    [self presentViewController:alert animated:YES completion:^{
        NSLog(@"decode error occured :%@", error.localizedDescription); }];
    
}

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    
    NSLog(@"음악 재생이 종료됨");
    
    [self displayTime:0
             duration:self.player.duration];
    [self.playButton setSelected:NO];
}

@end
