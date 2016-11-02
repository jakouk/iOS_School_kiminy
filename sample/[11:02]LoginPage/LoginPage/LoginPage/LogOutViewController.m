//
//  LogOutViewController.m
//  LoginPage
//
//  Created by jakouk on 2016. 11. 2..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "LogOutViewController.h"

@interface LogOutViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@end

@implementation LogOutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//로그아웃 버튼을 누르면 자동로그인이 종료되면서 메인 화면으로 나감 .
- (IBAction)touchupInsideLogOut:(UIButton *)sender {
    
    DataCenter *dataCenter = [DataCenter sharedData];
    [dataCenter setAutoLogin:NO];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyBoard instantiateInitialViewController];
    
    UIApplication *application = [UIApplication sharedApplication];
    
    UIWindow *window = [application.delegate window];
    window.rootViewController = vc;
    [window makeKeyAndVisible];
}

//세그먼트값이 변화하면 그 정보를 노티를 통해서 전송함.
- (IBAction)stepperChanged:(UISegmentedControl *)sender {
    
    NSNumber *number = [NSNumber numberWithInteger:sender.selectedSegmentIndex];
    NSDictionary *userInfo = @{@"segmentIndex":number};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"noti" object:nil userInfo:userInfo];
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
