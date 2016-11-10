//
//  ViewController.m
//  Block
//
//  Created by jakouk on 2016. 11. 10..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

typedef void (^plusBlock)(int, int);
typedef void (^hello)(NSString * hello);

@interface ViewController ()

@property plusBlock t1;
@property (nonatomic) NSString *str1;
@property (nonatomic) NSInteger numnum;

@property (nonatomic, weak) IBOutlet UILabel *testLb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [UIView beginAnimations:@"ani" context:nil];
//    
//    [UIView setAnimationDelay:10];
//    [UIView setAnimationDuration:3];
//    [self.testLb setFrame:CGRectMake(0, 400, self.testLb.bounds.size.width, self.testLb.bounds.size.height)];
//    
//    [UIView commitAnimations];
//    
    ViewController __weak *wself = self;
//    
//    void(^ani)(void) = ^{
//          [wself.testLb setFrame:CGRectMake(500, 400, wself.testLb.bounds.size.width, wself.testLb.bounds.size.height)];
//    };
//    
//    [UIView animateWithDuration:3 animations:ani];
//    [UIView animateWithDuration:3 animations:^{
//            [wself.testLb setFrame:CGRectMake(200, 600, wself.testLb.bounds.size.width, wself.testLb.bounds.size.height)];
//    }];
//    
//    [UIView animateWithDuration:3 animations:^{
//        
//    } completion:^(BOOL finished){
//        if (finished) {
//            //어떠한 일을 해라
//        }
//    }];
    
//    [UIView animateKeyframesWithDuration:5 delay:5 options:UIViewKeyframeAnimationOptionAutoreverse animations:^{
//        [wself.testLb setFrame:CGRectMake(200, 600, wself.testLb.bounds.size.width, wself.testLb.bounds.size.height)];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            NSLog(@"hello");
//        }
//    }];
//    
//    [UIView animateWithDuration:5 delay:0.1 usingSpringWithDamping:0.01 initialSpringVelocity:2 options:UIViewAnimationOptionRepeat animations:^{
//        [wself.testLb setFrame:CGRectMake(100, 300, wself.testLb.bounds.size.width, wself.testLb.bounds.size.height)];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            NSLog(@"hello");
//        }
//    }];
//    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    //제곱을 만드는 간단한 블럭
    void (^square)(int) = ^(int a){
        NSLog(@"Block %d",a*a);
    };
    square(10);
    
    //2개의 숫자를 더하는 블럭
    self.t1 = ^(int a, int b){
        NSLog(@"plus %d",a+b);
    };
    self.t1(10,20);
    
    
    void(^block)(void) = ^{
        NSLog(@"this is block");
    };
    block();

    
    int(^plusNumber)(int, int) = ^(int num1, int num2){
        return num1+num2;
    };
    int result = plusNumber(5,6);
    NSLog(@"result %d",result);
    [self testMethod];
    self.numnum = 0;
    
}

- (void) testMethod {
    
    //block 안에서만 쓰는 변수
    __block NSInteger anInteger = 42;
    
    ViewController * __weak wself = self;
    
    NSLog(@"self %@",self);
    
    wself.numnum = 500;
    
    void (^testBlock)(void) = ^{
        
        NSLog(@"chapture wself %@",wself);
        
        wself.numnum = 10;
        NSLog(@"Integer is : %ld",wself.numnum);
    };
    
    
    wself = nil;
    NSLog(@"out block Integer is :%ld",self.numnum);
    
    testBlock();
    
    hello t = ^(NSString *hello){
        NSLog(@"hello method %@",hello);
    };
    
    [self simpleMethod:t];
    
}

- (void)simpleMethod:(hello)param {
    
    NSLog(@"before statrtBlock");
    param(@"in param");
    NSLog(@"after EndBlock");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
