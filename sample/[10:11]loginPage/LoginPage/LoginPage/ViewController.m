//
//  ViewController.m
//  LoginPage
//
//  Created by jakouk on 2016. 10. 11..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//델리게이트
<UITextFieldDelegate , UIScrollViewDelegate>

@property UITextField *identifier;
@property UITextField *password;
@property UIScrollView *scroll;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //My Login Page 글자
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(self.view.frame.size.width/2 - 100, 100, 200, 80);
    label.text = @"My Login Page";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
    //스크롤 컨텐츠 크기는 스크롤 보다 50 높게 설정
    self.scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.scroll setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height + 50)];
    self.scroll.delegate = self;
    self.scroll.bounces = NO;
    self.scroll.scrollEnabled = NO;
    [self.view addSubview:self.scroll];
    
    //가운데 뷰로서 id, pw 입력 창등이 있다. 
    UIView *center = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-150, 200, 300, 200)];
    [self.scroll addSubview:center];
    
    //라벨 id, pw
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 30, 50, 40)];
    label1.text = @"ID:";
    label1.textAlignment = NSTextAlignmentCenter;
    [center addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(10, 80, 50, 40)];
    label2.text = @"PW:";
    label2.textAlignment = NSTextAlignmentCenter;
    [center addSubview:label2];
    
    //id, pw 입력하는 창
    self.identifier = [[UITextField alloc] initWithFrame:CGRectMake(80, 30, 200, 40)];
    self.identifier.borderStyle = UITextBorderStyleLine;
    self.identifier.delegate = self;
    self.identifier.placeholder = @"아이디";
    [center addSubview:self.identifier];
    
    self.password = [[UITextField alloc] initWithFrame:CGRectMake(80, 80, 200, 40)];
    self.password.borderStyle = UITextBorderStyleLine;
    self.password.delegate = self;
    self.password.placeholder = @"비밀번호";
    self.password.secureTextEntry = YES;
    [center addSubview:self.password];
    
    //로그인 회원가입 버튼
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(50, 130, 100, 40)];
    [btn1 setTitle:@"로그인" forState: UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [center addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(170, 130, 100, 40)];
    [btn2 setTitle:@"회원가입" forState: UIControlStateNormal];
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [center addSubview:btn2];
    
    //배경화면을 누르면 키보드 다운
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];
    
}

// 아이디 textField에서 return 을 누르면 비밀번호 textField로 이동
// 비밀번호 textField에서 return 을 누르면 키보드 다운

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    BOOL isUp;
    
    if([textField.placeholder isEqualToString:@"아이디"]){
        [textField resignFirstResponder];
        [self.password becomeFirstResponder];
        isUp = NO;
    }else{
        [textField resignFirstResponder];
        [self.scroll setContentOffset:CGPointMake(0, 0)];
        isUp = YES;
    }
    
    return isUp;
}

//TextField를 누르면 scroll의 offSet의 x를 50 올려준다.
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{

    [self.scroll setContentOffset:CGPointMake(0, 50)];
    return YES;
}

- (void) hideKeyboard {
    [self.scroll setContentOffset:CGPointMake(0, 0)];
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
