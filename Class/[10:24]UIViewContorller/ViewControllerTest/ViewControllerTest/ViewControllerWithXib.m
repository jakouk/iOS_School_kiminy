//
//  ViewControllerWithXib.m
//  ViewControllerTest
//
//  Created by jakouk on 2016. 10. 24..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewControllerWithXib.h"
#import "UIViewController2.h"
#import "ViewController.h"

@interface ViewControllerWithXib ()

@end

@implementation ViewControllerWithXib

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


- (IBAction)onTouchUpInsideNextBtn:(id)sender {
    //객체 만들기
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc2 = [storyBoard instantiateViewControllerWithIdentifier:@"UIViewController2"];
//    
//    //transition Style
//    [vc2 setModalTransitionStyle:UIModalTransitionStylePartialCurl];
//    
//    //present self가 vc2를 부르는 느낌.
//    [self presentViewController:vc2 animated:YES completion:nil];
    
    //navi push
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
