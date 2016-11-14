//
//  ViewController.m
//  Thread
//
//  Created by jakouk on 2016. 11. 11..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timeCount;
@property NSThread *thread;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//쓰레드 시작
- (void)viewDidAppear:(BOOL)animated {
    [self startThread];
}

//stopWatch 쓰레드를 불러옴
- (void)startThread {
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(stopWatch) object:nil];
    [self.thread start];
}

//self.thread의 cancelled값에 의해서 정지하고 쓰레드 삭제 ( perform은 mainThread에서 돌리기 위한 작업 )
- (void)stopWatch {
    
    while (!self.thread.cancelled) {
        sleep(1);
        [self performSelectorOnMainThread:@selector(changeText) withObject:nil waitUntilDone:NO];
    }
    self.thread = nil;
}

//버튼을 누르면 정지하면고 시작하면 쓰레드 다시 생성해서 시작
-(IBAction)touchupInsideBtn:(UIButton *)sender {

    if ([sender.titleLabel.text isEqualToString:@"start"]) {
        [self.thread cancel];
        sender.selected = YES;
    } else {
        [self startThread];
        sender.selected = NO;
    }
}

//UI를 main에서 돌려주기 위해서 따로 사용함.
- (void)changeText {
    NSInteger nowTime =[self.timeCount.text integerValue];
    if ( nowTime < 9) {
        nowTime = nowTime + 1;
        self.timeCount.text = [NSString stringWithFormat:@"%ld",nowTime];
    } else {
        self.timeCount.text = [NSString stringWithFormat:@"0"];
    }
}


- (void)countLog {
    for (NSInteger i = 0; i<100000; i++) {
        for (NSInteger j = 0; j<100000; j++) {
            
        }
        NSLog(@"countingLog %ld",i);
    }
}

- (void)printHello{
    NSLog(@"hello");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
