//
//  ViewController.m
//  VendingMachineExample
//
//  Created by jakouk on 2016. 10. 5..
//  Copyright © 2016년 jakouk. All rights reserved.
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
    self.itemImgName = @[@"super-mario-06",@"small-super-mario",@"yoshi-super-mario-01",@"Luigi_(Mario_Party_DS)"];
    self.itemData = @{@"불꽃 슈펴마리오":@"1000",@"슈퍼마리오":@"2000",@"요시":@"3000",@"루이지":@"4000"};
    self.costData = @[@"1000",@"500",@"100",@"반환"];
    self.itemViews = [[NSMutableArray alloc] init];
    self.inputBtns = [[NSMutableArray alloc] init];
    
    [self createView];
    [self updateLayout];
}

- (void)createView
{
    UIView *itemCountainerView = [[UIView alloc]init];
    itemCountainerView.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:itemCountainerView];
    
     //이문장이 살짝 이해가 안감. 그냥 바로 만들어서 사용해도 될거 같은데 말이다.
    self.itemContainerView = itemCountainerView;
    
    NSArray *itemDataKeys = self.itemData.allKeys;
    
    for(NSInteger i = 0; i<4; i++){
        
        //4개 버튼뷰를 만드는 뷰
        UIView *itemView = [[UIView alloc]init];
        itemView.backgroundColor = [UIColor whiteColor];
        itemView.tag = i;
        [self.itemContainerView addSubview:itemView];
        [self.itemViews addObject:itemView];
        
        //이미지뷰
        UIImageView *img = [[UIImageView alloc]init];
        img.frame = CGRectMake(0, 200-35, itemView.frame.size.width, 200-35);
        img.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        img.image = [UIImage imageNamed:[self.itemImgName objectAtIndex:i]];
        
        //제목 뷰 ( 제품 이름 )
        UILabel *titleLB = [[UILabel alloc]init];
        titleLB.frame = CGRectMake(0, 200-35, itemView.frame.size.width, 20);
        titleLB.text = [itemDataKeys objectAtIndex:i];
        titleLB.font = [UIFont boldSystemFontOfSize:16];
        titleLB.textAlignment = NSTextAlignmentCenter;
        titleLB.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [itemView addSubview:titleLB];
        
        //가격 뷰 ( 제품 가격 )
        UILabel *costLB = [[UILabel alloc]init];
        costLB.frame = CGRectMake(0, 200-35, itemView.frame.size.width, 15);
        costLB.text = [self.itemData objectForKey:[itemDataKeys objectAtIndex:i]];
        costLB.font = [UIFont systemFontOfSize:15];
        costLB.textAlignment = NSTextAlignmentCenter;
        costLB.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [itemView addSubview:costLB];
        
        
        
    }
    
    
    
}

//UI잡기
- (void)updateLayout
{
   
}

//드링크 버튼 클릭시 액션
//아이템 버튼 클릭시 액션
- (void)onTouchupInsideItem:(UIButton *)sender
{
    
}

//돈
- (void)onTouchupInsideCoin:(UIButton *)sender
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
