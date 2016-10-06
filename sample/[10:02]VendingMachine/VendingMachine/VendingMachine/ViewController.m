//
//  ViewController.m
//  VendingMachine
//
//  Created by youngmin joo on 2016. 9. 30..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (nonatomic) NSArray *itemImgName;
@property (nonatomic) NSDictionary *itemData;
@property (nonatomic) NSArray *costData;

@property (nonatomic, weak) UIView *itemContainerView;
@property (nonatomic) NSMutableArray *itemViews;

@property (nonatomic, weak) UIView *dispalyView;
@property (nonatomic, weak) UILabel *displayLb;

@property (nonatomic, weak) UIView *inputView2;
@property (nonatomic) NSMutableArray *inputBtns;


//남은 돈
@property (nonatomic, assign)NSInteger remaindMoney;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.itemImgName = @[@"island1",@"island2",@"island3.jpg",@"island4.jpg"];
    self.itemData = @{@"sum1":@"1000",@"sum2":@"2000",@"sum3":@"3000",@"sum4":@"4000"};
    self.costData = @[@"1000",@"500",@"100",@"반환"];
    self.itemViews = [[NSMutableArray alloc] init];
    self.inputBtns = [[NSMutableArray alloc] init];
    
    [self createView];
    [self updateLayout];
}


- (void)createView
{
    //Display
    
    //itemContatinerView는 네가지 버튼의 기준이 되는 사각형
    UIView *itemContainerView = [[UIView alloc] init];
    //    drinkContainerView.backgroundColor = [UIColor yellowColor];
    itemContainerView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:itemContainerView];
    
    
    self.itemContainerView = itemContainerView;
    
    //itemData 라는 dictionary의 모든 키값을 itemDataKeys라는 array에 저장
    NSArray *itemDataKeys = self.itemData.allKeys;
    
    //item View
    //item View는 4개의 자판기 버튼의 뷰 하나.
    for (NSInteger i = 0; i < 4; i++) {
        //base
        UIView *itemView = [[UIView alloc] init];
        itemView.backgroundColor = [UIColor grayColor];
        itemView.tag = i;
        [self.itemContainerView addSubview:itemView];
        [self.itemViews addObject:itemView];
        
        //imageView
        UIImageView *img = [[UIImageView alloc] init];
        img.frame = CGRectMake(0, 0, itemView.frame.size.width, 200 - 35);
        img.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        img.image = [UIImage imageNamed:[self.itemImgName objectAtIndex:i]];
        [itemView addSubview:img];
        
        //title
        //버튼의 이름들
        UILabel *titleLb = [[UILabel alloc] init];
        titleLb.frame = CGRectMake(0, 200 - 35, itemView.frame.size.width, 20);
        titleLb.text = [itemDataKeys objectAtIndex:i];
        titleLb.font = [UIFont boldSystemFontOfSize:16];
        titleLb.textAlignment = NSTextAlignmentCenter;
        titleLb.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [itemView addSubview:titleLb];
        
        //cost
        UILabel *costLB = [[UILabel alloc] init];
        costLB.frame = CGRectMake(0, 200 - 15, itemView.frame.size.width, 15);
        costLB.text = [self.itemData objectForKey:[itemDataKeys objectAtIndex:i]];
        costLB.font = [UIFont systemFontOfSize:15];
        costLB.textAlignment = NSTextAlignmentCenter;
        costLB.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [itemView addSubview:costLB];
        
        //itemView위에 UIButton이라는 것을 덮어 씌움.
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, itemView.frame.size.width, itemView.frame.size.height);
        
        //이벤트에 관련된 메소드 인듯.
        [btn addTarget:self action:@selector(onTouchupInsideItem:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        btn.tag = i;
        [itemView addSubview:btn];
        
    }
    
    //Display View
    
    //가격이 표시되는 뷰
    UIView *dispalyView = [[UIView alloc] init];
    dispalyView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:dispalyView];
    self.dispalyView = dispalyView;
    
    UILabel *displayLb = [[UILabel alloc] init];
    displayLb.text = @"0";
    displayLb.font = [UIFont systemFontOfSize:40];
    displayLb.textAlignment = NSTextAlignmentRight;
    [dispalyView addSubview:displayLb];
    self.displayLb = displayLb;
    
    //Input View
    //10000, 5000, 1000 등의 금액이 적혀있는 뷰
    UIView *inputView = [[UIView alloc] init];
    inputView.backgroundColor = [UIColor redColor];
    [self.view addSubview:inputView];
    self.inputView2 = inputView;
    
    

    for (NSInteger i = 0; i < [self.costData count]; i++) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn addTarget:self action:@selector(onTouchupInsideCoin:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|  UIViewAutoresizingFlexibleHeight;
        
        //
        [btn setTitle:[self.costData objectAtIndex:i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        btn.tag = i;
        [inputView addSubview:btn];
        [self.inputBtns addObject:btn];
    }
    
    
}

//UI잡기
- (void)updateLayout
{
    //큰 틀 y좌표
    CGFloat baseViewOffsetY = 45;
    
    //드링크 뷰 하나의 높이는 200정도 잡느다.
    //기본이 되는 사각형의 크기 x = 20, y = 45 , width = 디바이스 width - 40, height = 410;
    self.itemContainerView.frame = CGRectMake(20, baseViewOffsetY, self.view.frame.size.width - 40, 400+10);
    
    //y좌표 = 45 + 기본 디바이스 길이 + 30 ( 아마 title 위치 정할때 사용할듯 )
    baseViewOffsetY += self.itemContainerView.frame.size.height + 30;
    
    //item Layout
    const NSInteger baseViewBet = 10;
    
    for (UIView *itemView in self.itemViews) {
        
        // row로 y 좌표를 사용하려고 하고, cal로 x 좌표를 사용하려고 만듬.
        // 1,2 와 3,4 구분
        NSInteger row = itemView.tag/2;
        
        // 홀수, 짝수 구분
        NSInteger cal = itemView.tag%2;
        CGFloat itemViewWidth = (self.itemContainerView.frame.size.width - 10)/2;
        CGFloat itemViewHeight = (self.itemContainerView.frame.size.height - 10)/2;
        itemView.frame = CGRectMake((itemViewWidth + baseViewBet)*cal,(itemViewHeight + baseViewBet)*row, itemViewWidth,itemViewHeight);
    }
    
    //displayView Layout
    self.dispalyView.frame = CGRectMake(20, baseViewOffsetY, self.view.frame.size.width - 40, 150);
    self.displayLb.frame = CGRectMake(0, 0, self.dispalyView.frame.size.width, self.dispalyView.frame.size.height);
    baseViewOffsetY += self.dispalyView.frame.size.height + 15;
    
    //inputView Layout
    self.inputView2.frame = CGRectMake(20, baseViewOffsetY, self.view.frame.size.width - 40, 45);
    NSInteger btnWitdh = self.inputView2.frame.size.width/[self.inputBtns count] - 10;
    
    for (UIView *inputBtn in self.inputBtns) {
        inputBtn.frame = CGRectMake((btnWitdh + 10)*inputBtn.tag, 0, btnWitdh, self.inputView2.frame.size.height);
    }
    
}

//드링크 버튼 클릭시 액션
//아이템 버튼 클릭시 액션
- (void)onTouchupInsideItem:(UIButton *)sender
{
    //현재 클릭된 버튼의 금액
    NSInteger selectedTag = sender.tag;
    NSArray *dataKeys = self.itemData.allKeys;
    
    NSString *dataKey = [dataKeys objectAtIndex:selectedTag];
    NSString *costStr = [self.itemData objectForKey:dataKey];
    
    if(self.remaindMoney >= costStr.integerValue){
        
        //디스플레이 업데이트
        self.remaindMoney -= costStr.integerValue;
        self.displayLb.text = [NSString stringWithFormat:@"%ld",_remaindMoney];
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"빙고"
                                                                                 message:[NSString stringWithFormat:@"%@가 나왔습니다",dataKey]
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:okBtn];
        [self presentViewController:alertController animated:YES completion:nil];
        
    }else{
        
        //잔액이 부족합니다.
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"실패"
                                                                                 message:[NSString stringWithFormat:@"잔액이 부족합니다."]
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:okBtn];
        [self presentViewController:alertController animated:YES completion:nil];
        
    }
}

//돈
- (void)onTouchupInsideCoin:(UIButton *)sender
{
    //현재 클릭된 버튼의 가격
    NSInteger selectedTag =  sender.tag;
    NSString *costStr = [self.costData objectAtIndex:selectedTag];
    
    if([costStr isEqualToString:@"반환"]){
        
        NSLog(@"반환 버튼 클릭");
        
        if(self.remaindMoney <= 0){
            
        }else{
            NSInteger money = self.remaindMoney;
            NSInteger money500;
            NSInteger money100;
            
            money500 = money/500;
            money100 = (money - money500 * 500)/100;
            
            self.remaindMoney = 0;
            self.displayLb.text = [NSString stringWithFormat:@"0"];
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"반환"
                                                                                     message:[NSString stringWithFormat:@"잔돈은 500원이 %ld개, 100원이 %ld개 입니다. ",money500, money100]
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
            [alertController addAction:okBtn];
            [self presentViewController:alertController animated:YES completion:nil];

        }
        
    }else{
        
        //디스플레이 뷰에 넣기
        self.remaindMoney += costStr.integerValue;
        self.displayLb.text = [NSString stringWithFormat:@"%ld",_remaindMoney];
        
         NSLog(@"금액 버튼 클릭");
    }
    
    
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//git 안에 .git이 있었던것 같음.
