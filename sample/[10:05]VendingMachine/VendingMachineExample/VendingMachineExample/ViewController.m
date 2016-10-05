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
    self.itemImgName = @[@"island1",@"island2",@"island3.jpg",@"island4.jpg"];
    self.itemData = @{@"sum1":@"1000",@"sum2":@"2000",@"sum3":@"3000",@"sum4":@"4000"};
    self.costData = @[@"1000",@"500",@"100",@"반환"];
    self.itemViews = [[NSMutableArray alloc] init];
    self.inputBtns = [[NSMutableArray alloc] init];
    
    [self createView];
    [self updateLayout];
}

-(void)createView{
    
}

-(void)updateLayout{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
