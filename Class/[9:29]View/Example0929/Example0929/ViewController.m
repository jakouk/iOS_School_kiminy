//
//  ViewController.m
//  Example0929
//
//  Created by jakouk on 2016. 9. 29..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *newView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300 , 300)];
    
    newView.backgroundColor = [[UIColor alloc]initWithRed:100.f/255.f green:0 blue:125.f/255.f alpha:0.5];
    
    // [newView setBackgroundColor:[UIColor redColor]]; set으로 접근해서 값을 주었다.
    // newView.alpha = 0.5;
    //[myView setAlpha:0.5];
   // [self.view addSubview:newView];
    
    UIView *newSubView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    newSubView.backgroundColor = [UIColor blackColor];
    //[newView addSubview:newSubView];
    
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, 345, 100)];
    topView.backgroundColor = [UIColor yellowColor];
    //[self.view addSubview:topView];
    
    UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(15, 552, 345, 100)];
    bottomView.backgroundColor = [UIColor redColor];
    //[self.view addSubview:bottom];
    
    //NSLog(@"%lf :::: %lf",)
    //CGFloat a = self.view.frame.size.height-30;
    
    UIView *one = [[UIView alloc]initWithFrame:CGRectMake(15, 15, self.view.frame.size.width-30, self.view.frame.size.height-30)];
    one.backgroundColor = [UIColor blueColor];
    //[self.view addSubview:one];
    
    UIView *two = [[UIView alloc]initWithFrame:CGRectMake(15, 15, one.frame.size.width-30, one.frame.size.height-30)];
    two.backgroundColor = [UIColor redColor];
    //[one addSubview:two];
    
    UIView *three = [[UIView alloc]initWithFrame:CGRectMake(15, 15, two.frame.size.width-30, two.frame.size.height-30)];
    three.backgroundColor = [UIColor greenColor];
    //[two addSubview:three];
    
    
    
    UIView *rectangle = [[UIView alloc]initWithFrame:CGRectMake(50, self.view.frame.size.height/2-100, self.view.frame.size.width-100, 200)];
    rectangle.backgroundColor = [UIColor blackColor];
    //[self.view addSubview:rectangle];
    
    UIView *left = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 200)];
    left.backgroundColor = [UIColor redColor];
    //[rectangle addSubview:left];
    
    UIView *right = [[UIView alloc]initWithFrame:CGRectMake(rectangle.frame.size.width-20, 0, 20, 200)];
    right.backgroundColor = [UIColor yellowColor];
    //[rectangle addSubview:right];
    
    UIView *top = [[UIView alloc]initWithFrame:CGRectMake(0,0,rectangle.frame.size.width,20)];
    top.backgroundColor = [UIColor blueColor];
    //[rectangle addSubview:top];
    
    UIView *bottom = [[UIView alloc]initWithFrame:CGRectMake(0, rectangle.frame.size.height-20, rectangle.frame.size.width, 20)];
    bottom.backgroundColor = [UIColor greenColor];
    //[rectangle addSubview:bottom];
    
    
    UIView *half = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
    half.backgroundColor = [UIColor redColor];
    [self.view addSubview:half];
    
    UIView *third = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2, self.view.frame.size.height/3, self.view.frame.size.width/2, self.view.frame.size.height/3)];
    third.backgroundColor = [UIColor blueColor];
    [self.view addSubview:third];
    
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
