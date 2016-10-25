//
//  UIViewController2.m
//  ViewControllerTest
//
//  Created by jakouk on 2016. 10. 24..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "UIViewController2.h"
#import "ViewController.h"

@interface UIViewController2 ()

@end

@implementation UIViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"viewDidLoad");
}

- (void)loadView {
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    NSLog(@"viewWillApper");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    NSLog(@"viewDidApper:(BOOL)animate");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    NSLog(@"viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:YES];
    NSLog(@"viewDidDisapper");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//자기 스스로 내려가는 느낌.
- (IBAction)onTouchupInsideDissmissBtn:(id)sender {
    //present
    //[self dismissViewControllerAnimated:YES completion:nil];
    
    //navi pop
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onTouchupInsideNextBtn:(id)sender {
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc2 = [storyBoard instantiateViewControllerWithIdentifier:@"ViewController"];
    
    [self.navigationController pushViewController:vc2 animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
