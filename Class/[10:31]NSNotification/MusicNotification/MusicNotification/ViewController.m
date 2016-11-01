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

///AVAudioPlay 라는 객체를 만듬 ( 아직 주소값은 주지 않은듯 )
@property AVAudioPlayer *player;

///UIButton 이라는 객체를 만든
@property UIButton *playButton;

///UILabel 이라는 객체를 만듬
@property UILabel *timeLabel;

///NSTimer 라는 객체를 만듬
@property NSTimer *timer;

///displayTime 이라는 메서드를 만듬, NSTimeInterval은 객체가 아닌것 같음 double인것 같음.
-(void)displayTime :(NSTimeInterval)currentTime duration:(NSTimeInterval)duration;

@end

@implementation ViewController

#pragma mark - Life Cycle


- (void)viewDidLoad {
    /// 부모 클래스의 viewDidLoad메소드 실행
    [super viewDidLoad];
    
    ///CGRectMake의 앞의 2개는 x,y 좌표를 나타내고 뒤의 2개는 사각형의 높이와 너비를 나타내며 반환 값은 CGRect 이다.
    CGRect labelFrame = CGRectMake(30.0f, 30.0f, 250.f, 30.f);
    CGRect buttonFrame = CGRectMake(30.f, 70.0f, 50.f, 30.f);
    
    self.playButton = [[UIButton alloc]initWithFrame:buttonFrame];
    [self.playButton setTitle:@"Play" forState:UIControlStateNormal];
    [self.playButton setTitle:@"Pause" forState:UIControlStateSelected];
    [self.playButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.playButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [self.playButton setBackgroundColor:[UIColor yellowColor]];
    
    /*
     버튼의 기본적인 배경색은 노란색이다.
     UIControlStateNormal 상태일때 버튼은 play에 파란색
     UIContorolStateSelected 상태일때 버튼은 Pause이고 빨간색
     */
    [self.playButton addTarget:self action:@selector(clickPlayButton:) forControlEvents:UIControlEventTouchUpInside];
    
    ///자기자신의 뷰에 self.playButton이라는 뷰를 더한다.
    [self.view addSubview:self.playButton];
    
    //timeLabel = UILabel객체 라벨 프레임은 CGRect은 라벨의 크기와 위치를 정하는 구조체이다.
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
    if ((self.player.duration >0) && (self.player.currentTime >0)) {
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
