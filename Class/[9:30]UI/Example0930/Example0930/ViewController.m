//
//  ViewController.m
//  Example0930
//
//  Created by jakouk on 2016. 9. 30..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //첫번째 레이블
    UILabel *uione = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 200, 30)];
    uione.text = @"예제 화면 입니다.";
    //[self.view addSubview:uione];
    
    //두번째 레이블
    UILabel *uitwo = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width-220, 60, 200, 30)];
    uitwo.text = @"예쁜 레이블 입니다.";
    uitwo.textColor = [UIColor redColor];
    uitwo.textAlignment = NSTextAlignmentRight;
    //[self.view addSubview:uitwo];
    
    //세번쨰 레이블
    UIView *uiThree = [[UIView alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width-40, 200)];
    uiThree.backgroundColor = [UIColor blackColor];
    //[self.view addSubview:uiThree];
    
    //네번째 레이블
    UILabel *uiFour = [[UILabel alloc]initWithFrame:CGRectMake(uiThree.frame.size.width-200, uiThree.frame.size.height-30, 200, 30)];
    uiFour.text = @"View위에 레이블 입니다.";
    uiFour.textAlignment = NSTextAlignmentRight;
    uiFour.textColor = [UIColor whiteColor];
    //[uiThree addSubview:uiFour];
    
    //다섯번째 레이블
    UILabel *uiFive = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 100, 340, 200, 30)];
    uiFive.text = @"중앙에 있는 레이블 입니다.";
    uiFive.textAlignment = NSTextAlignmentCenter;
    uiFive.textColor = [UIColor blackColor];
    //[self.view addSubview:uiFive];
    
    //여섯번째 레이블
    UILabel *uiSix = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 100, 380, 200, 30)];
    uiSix.text = @"폰트는 20입니다.";
    uiSix.textAlignment = NSTextAlignmentCenter;
    uiSix.font = [UIFont systemFontOfSize:20];
    uiSix.textColor = [UIColor blackColor];
    //[self.view addSubview:uiSix];
    
    
    //가장 위의 사각형 뷰
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(30, 50, self.view.frame.size.width-60, self.view.frame.size.height/3 * 2 - 50)];
    topView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topView];
    
    //사각형 뷰의 1번
    UIView *oneView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, topView.frame.size.width/2 - 10, topView.frame.size.height/2 -10)];
    oneView.backgroundColor = [UIColor whiteColor];
    [topView addSubview:oneView];
    
    //사각형 뷰의 2번
    UIView *twoView = [[UIView alloc]initWithFrame:CGRectMake(topView.frame.size.width/2+10, 0, topView.frame.size.width/2 - 10, topView.frame.size.height/2 -10)];
    twoView.backgroundColor = [UIColor whiteColor];
    [topView addSubview:twoView];
    
    //사각형 뷰의 3번
    UIView *threeView = [[UIView alloc]initWithFrame:CGRectMake(0, topView.frame.size.height/2+10,topView.frame.size.width/2 - 10, topView.frame.size.height/2 -10)];
    threeView.backgroundColor = [UIColor whiteColor];
    [topView addSubview:threeView];
    
    //사각형 뷰의 4번
    UIView *fourView = [[UIView alloc]initWithFrame:CGRectMake(topView.frame.size.width/2+10, topView.frame.size.height/2+10,topView.frame.size.width/2 - 10, topView.frame.size.height/2 -10)];
    fourView.backgroundColor = [UIColor whiteColor];
    [topView addSubview:fourView];
    
    
    //가운데 뷰
    UIView *midView = [[UIView alloc]initWithFrame:CGRectMake(30, self.view.frame.size.height/3 * 2 + 20 ,self.view.frame.size.width-60, 100)];
    midView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:midView];
    
    //바닥 뷰
    UIView *bottom = [[UIView alloc]initWithFrame:CGRectMake(30, self.view.frame.size.height/3 * 2 + 140, self.view.frame.size.width-60, 80)];
    bottom.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:bottom];
    
    //첫번째 사각형 이미지
    UIImageView *oneImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, oneView.frame.size.width, oneView.frame.size.height/3 *2)];
    [oneImg setImage:[UIImage imageNamed:@"super-mario-06.png"]];
    [oneImg setContentMode:UIViewContentModeScaleAspectFit];
    [oneView addSubview:oneImg];
    
    //두번째 사각형 이미지
    UIImageView *twoImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, oneView.frame.size.width, oneView.frame.size.height/3 *2)];
    [twoImg setImage:[UIImage imageNamed:@"yoshi-super-mario-01.png"]];
    [twoImg setContentMode:UIViewContentModeScaleAspectFit];
    [twoView addSubview:twoImg];
    
    //새번째 사각형 이미지
    UIImageView *threeImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, oneView.frame.size.width, oneView.frame.size.height/3 *2)];
    [threeImg setImage:[UIImage imageNamed:@"small-super-mario.png"]];
    [threeImg setContentMode:UIViewContentModeScaleAspectFit];
    [threeView addSubview:threeImg];
    
    //네번째 사각형 이미지
    UIImageView *fourImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, oneView.frame.size.width, oneView.frame.size.height/3 *2)];
    [fourImg setImage:[UIImage imageNamed:@"Luigi_(Mario_Party_DS).png"]];
    [fourImg setContentMode:UIViewContentModeScaleAspectFit];
    [fourView addSubview:fourImg];
    
    
    
    //첫번째 사각형 가격
    UILabel *oneLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, oneView.frame.size.height/3*2, oneView.frame.size.width, oneView.frame.size.height/3)];
    oneLabel.text = @"1000원";
    oneLabel.textAlignment = NSTextAlignmentCenter;
    [oneView addSubview:oneLabel];
    
    //두번째 사각형 가격
    UILabel *twoLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, oneView.frame.size.height/3*2, oneView.frame.size.width, oneView.frame.size.height/3)];
    twoLabel.text = @"800원";
    twoLabel.textAlignment = NSTextAlignmentCenter;
    [twoView addSubview:twoLabel];
    
    //세번째 사각형 가격
    UILabel *threeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, oneView.frame.size.height/3*2, oneView.frame.size.width, oneView.frame.size.height/3)];
    threeLabel.text = @"500원";
    threeLabel.textAlignment = NSTextAlignmentCenter;
    [threeView addSubview:threeLabel];
    
    //네번째 사각형 가격
    UILabel *fourLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, oneView.frame.size.height/3*2, oneView.frame.size.width, oneView.frame.size.height/3)];
    fourLabel.text = @"1500원";
    fourLabel.textAlignment = NSTextAlignmentCenter;
    [fourView addSubview:fourLabel];
    
    //가운데 사각형 가격
    UILabel *midLabel = [[UILabel alloc]initWithFrame:CGRectMake(0 , 0 ,self.view.frame.size.width-60, 100)];
    midLabel.text = @"잔액 : 0원";
    midLabel.textAlignment = NSTextAlignmentRight;
    midLabel.font = [UIFont systemFontOfSize:30];
    midLabel.textColor = [UIColor whiteColor];
    [midView addSubview:midLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
