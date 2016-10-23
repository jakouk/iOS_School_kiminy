//
//  ViewController.m
//  delegate
//
//  Created by jakouk on 2016. 10. 11..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

<UIScrollViewDelegate>

@property UILabel *label;
@property UITextField *tf;
@property UILabel *label1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 스크롤 뷰 크기는 디바이스 크기
    // 디바이스 뷰 크기는 디바이스 크기의 가로 3배
    UIScrollView *scroll = [[UIScrollView alloc]init];
    scroll .frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [scroll setContentSize:CGSizeMake(scroll.frame.size.width*3, scroll.frame.size.height)];
    scroll.pagingEnabled = YES;
    scroll.delegate = self;
    
    [self.view addSubview:scroll];
    
    //파란색 뷰
    UIView *newView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    newView1.backgroundColor = [UIColor blueColor];
    
    [scroll addSubview:newView1];
    
    //2번째 스크롤
    UIScrollView *calrories = [[UIScrollView alloc] init];
    calrories.frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    [calrories setContentSize:CGSizeMake(scroll.frame.size.width, scroll.frame.size.height*2)];
    calrories.delegate = self;
    [scroll addSubview:calrories];
    
    //초록색 뷰
    UIView *newView2 = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height)];
    newView2.backgroundColor = [UIColor greenColor];
    [calrories addSubview:newView2];
    
    //핑크색 뷰
    UIView *newView4 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    newView4.backgroundColor = [UIColor purpleColor];
    [calrories addSubview:newView4];
    
    
    //빨간색 뷰
    UIView *newView3 = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width*2,0 , self.view.frame.size.width, self.view.frame.size.height)];
    newView3.backgroundColor = [UIColor redColor];
    [scroll addSubview:newView3];
    
    //라벨
    self.label1 = [[UILabel alloc]init];
    self.label1.frame = CGRectMake(10, 50, 100, 50);
    self.label1.text = @"page : 1";
    [self.view addSubview:self.label1];
    
    //TextField
    self.tf = [[UITextField alloc]init];
    self.tf.frame = CGRectMake(self.view.frame.size.width/2 - 75, 150, 150, 75);
    self.tf.borderStyle = UITextBorderStyleLine;
    //self.tf.delegate = self;
    [self.view addSubview:self.tf];
    
    //label
    self.label = [[UILabel alloc]init];
    self.label.frame = CGRectMake(self.view.frame.size.width/2 - 75, 300, 150, 75);
    self.label.text = @"결과";
    [self.view addSubview:self.label];
    
    //확인버튼
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(self.view.frame.size.width/2 +95, 150, 75, 50);
    [btn setTitle:@"확인" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    
    [btn addTarget:self action:@selector(touchBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

//버튼을 누르면 tf.text의 값이 label에 나타남.
- (void)touchBtn:(UIButton *)btn{
    
    NSString *str = [[NSString alloc]initWithFormat:@"결과 : %@",self.tf.text];
    self.label.text = str;
    [self.tf resignFirstResponder];
    
}

//스크롤의 이동에 따라서 page가 바뀜
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    NSInteger pages = scrollView.contentOffset.x/self.view.frame.size.width +1;
    self.label1.text = [[NSString alloc]initWithFormat:@"page : %ld",pages];
    
}

//return키를 누르면 label에 값이 나타남.
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSString *str = [[NSString alloc]initWithFormat:@"결과 : %@",textField.text];
    self.label.text = str;
    [textField resignFirstResponder];
    return NO;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
