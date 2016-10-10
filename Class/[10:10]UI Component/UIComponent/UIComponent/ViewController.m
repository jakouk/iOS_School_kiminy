//
//  ViewController.m
//  UIComponent
//
//  Created by jakouk on 2016. 10. 10..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//메서드 내에서 접근할수 있도록 프로퍼티로 선언함. 
@property UILabel *label;
@property(weak) UIButton *beforeBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //디바이스 크기의 뷰
    UIView *topView = [[UIView alloc]init];
    topView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    topView.backgroundColor = [UIColor clearColor];
//    [self.view addSubview:topView];
    
    
    
    
    //hello 라는 글자가 나오는 라벨 ( topView 위에 올라가 있다 )
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(0, topView.frame.size.height/2-100, topView.frame.size.width, 200);
    label.text = @"hello";
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:label];
    
    //ok 버튼으로 기본 상태는 ok/ 누르고 있으면 touchDown / 선택하면 selected 가 된다.
    UIButton *okBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    okBtn.frame = CGRectMake(30,50, 100, 35);
    [okBtn setTitle:@"ok" forState:UIControlStateNormal];
    [okBtn setTitle:@"touchDown" forState:UIControlStateHighlighted];
    [okBtn setTitle:@"selected" forState:UIControlStateSelected];
    [okBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [okBtn setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    okBtn.titleLabel.font = [UIFont systemFontOfSize:30];
    
    okBtn.tag = 10;
    [okBtn addTarget:self action:@selector(touchUpInsideOKBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:okBtn];
    
//    UIImage *imgOne = [[UIImage alloc]init];
//    imgOne.images = [UIImage imageNamed:@"mario"];
    
    //선택된 버튼 :  이라는 글씨가 나오며 버튼의 선택에 따라서 글씨가 바뀐다.
    self.label = [[UILabel alloc] init];
   
    self.label.frame = CGRectMake(0, self.view.frame.size.height/2+100, self.view.frame.size.width, 100);
    self.label.text = @"선택된 버튼 : ";
    self.label.textAlignment = NSTextAlignmentCenter;
    //[self.view addSubview:self.label];
    
    // 가운데 뷰로 4개 버튼들의 기본이 되는 뷰이다.
    UIView *center = [[UIView alloc]init];
    center.frame = CGRectMake(self.view.frame.size.width/2-110, self.view.frame.size.height/2-100, 220, 120);
    [self.view addSubview:center];
    
    // 4개의 버튼은 저장하기 위한 Array
    NSMutableArray *itemView = [[NSMutableArray alloc]init];
    
    //4개의 버튼은 btn이라는 같은이름으로 만들고 tag를 통해서 구분한다.
    for(NSInteger i = 0; i<4; i+=1){
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.tag = i;
        
        [itemView addObject:btn];
        
        NSString *str = [[NSString alloc]initWithFormat:@"%ld번 버튼",i+1];
        
        btn.backgroundColor = [UIColor blueColor];
        
        [btn setTitle:str forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [btn setTitle:str forState:UIControlStateSelected];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        
        //버튼을 터치하면 touchUpInsideOKBtn의 매개변수로 버튼 자기가신을 넘긴다.
        [btn addTarget:self action:@selector(touchUpInsideOKBtn:) forControlEvents:UIControlEventTouchDown];
        
        //버튼에 둥근 모양을 준다.
        btn.layer.cornerRadius = 25;
        
        [center addSubview:btn];
    }
    
    //2X2 행렬 모양으로 위치를 맞춘다.
    for(UIView *item in itemView){
        
        NSInteger row = item.tag/2;
        NSInteger cal = item.tag %2;
        
        CGFloat width = 100;
        CGFloat height = 50;
        
        item.frame = CGRectMake((width+10)*cal, (height+10)*row, width, height);
    }
    
    self.beforeBtn = [[UIButton alloc]init];
    
    
    //switched 스위치이다. switch로 스위치의 on, off로 변화를 줄수 있다.
    UISwitch *switched = [[UISwitch alloc]init];
    switched.frame = CGRectMake(self.view.frame.size.width/2 - 50, self.view.frame.size.height/2 +100, 100, 100);
    switched.tintColor = [UIColor redColor];
    switched.thumbTintColor = [UIColor blueColor];
    switched.onTintColor = [UIColor yellowColor];
    [switched addTarget:self action:@selector(switchTouched:) forControlEvents:UIControlEventValueChanged];
    
    //슬라이드로서 슬라이더바의 위치를 이동할때 마다 값을 가져와서 반영한다.
    UISlider *slider = [[UISlider alloc]init];
    slider.frame = CGRectMake(self.view.frame.size.width/2 -100, self.view.frame.size.height/2+150, 200, 100);
    
    [slider addTarget:self action:@selector(touched:) forControlEvents:UIControlEventTouchDragInside];
    
    //[self.view addSubview:slider];
    //[self.view addSubview:switched];
    
    //textfiled로 textfiled의 모든 기능을 사용하기 위해서는 delegate를 사용해야 한다.
    UITextField *tf = [[UITextField alloc]init];
    tf.frame = CGRectMake(self.view.frame.size.width/2 - 50, 100, 100, 50);
    tf.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:tf];
}

// 슬라이더 바의 움직임에 따라서 배경색이 바뀌도록 4가지 색으로 나누어 놓았다.
-(void)touched:(UISlider*)slider{
    NSLog(@"%lf",slider.value);
    if(slider.value>=0 && slider.value <0.25){
        self.view.backgroundColor = [UIColor blueColor];
    }else if(slider.value >0.25 && slider.value <0.5){
        self.view.backgroundColor = [UIColor greenColor];
    }else if(slider.value >0.5 && slider.value <0.75){
        self.view.backgroundColor = [UIColor blackColor];
    }else{
        self.view.backgroundColor = [UIColor orangeColor];
    }
}

//switch 가 on 될때와 off 될때의 배경색이 바뀐다.
-(void)switchTouched:(UISwitch *)switched{
    if(switched.on){
        self.view.backgroundColor = [UIColor yellowColor];
    }
    else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
}

//누르는 버튼에 따라서 label의 텍스트 값이 바뀐다.
-(void)touchUpInsideOKBtn:(UIButton *)sender{
    
    NSString *title = sender.titleLabel.text;
    
        if(sender.selected){
            sender.selected = NO;
            self.label.text = [[NSString alloc]initWithFormat:@"선택된 버튼은 :" ];
            self.beforeBtn = nil;
        }else{
            sender.selected = YES;
            self.beforeBtn.selected = NO;
            self.label.text =[[NSString alloc]initWithFormat:@"선택된 버튼은 : %@",title];
            self.beforeBtn = sender;

        }

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
