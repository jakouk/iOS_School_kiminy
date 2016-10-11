//
//  ViewController.m
//  DelegateExample
//
//  Created by jakouk on 2016. 10. 10..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    // delegate 에 tf의 주소값을 주었다.
    // borderStyle = textField 의 주변선을 그려준다.
    // placeholder = 설명글 ( 배경 )
    
    UITextField *tf = [[UITextField alloc]init];
    tf.frame = CGRectMake(self.view.frame.size.width/2-50, 100, 100, 50);
    tf.borderStyle = UITextBorderStyleLine;
    tf.delegate = self;
    tf.placeholder = @"글자 입력";
    [self.view addSubview:tf];
    
    
    self.label = [[UILabel alloc]init];
    self.label.frame = CGRectMake(self.view.frame.size.width/2-100, 200, 200, 50);
    [self.view addSubview:self.label];
    
    UIButton *btn= [[UIButton alloc]init];
    btn.frame = CGRectMake(self.view.frame.size.width/2+100, 100, 100, 50);
    [btn setTitle:@"확인" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    
    
    
    [self.view addSubview:btn];
    
    
}

// [textField resignFirstResponder]는 return 키를 눌렀을때 키보드를 내리는 행동이다.
// 키보드로 입력하고 return을 누른 시점에서 label이 바뀐다.
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    self.label.text = textField.text;
    return YES;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
