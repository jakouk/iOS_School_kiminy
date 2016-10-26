//
//  ViewController1.m
//  NavigationController
//
//  Created by jakouk on 2016. 10. 25..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController1.h"
#import "NavigationBar.h"

@interface ViewController1 ()
 
@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NavigationBar *navi = [[NavigationBar alloc] initWithNavigationBar:self];
    navi.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: navi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createNavigationBar {
    UIView *navi = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    navi.backgroundColor = [UIColor grayColor];
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [backButton setTitle:@"Back" forState:UIControlStateHighlighted];
    [backButton setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [backButton addTarget:self action:@selector(touchupInsideBackButton:) forControlEvents:UIControlEventTouchUpInside];
    [navi addSubview:backButton];
    
    [self.view addSubview:navi];
}

- (void)touchupInsideBackButton:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
