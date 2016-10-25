//
//  JoinViewController.m
//  UIViewController
//
//  Created by jakouk on 2016. 10. 24..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "JoinViewController.h"

@interface JoinViewController ()

@end

@implementation JoinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"3집.jpg"]];
    
    UILabel *pageName = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 100, 150, 200, 50)];
    pageName.text = @"Signup Page";
    pageName.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:pageName];
    
    UIView *rectangle = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 150, self.view.frame.size.height/2-150, 300, 200)];
    [self.view addSubview:rectangle];
    
    //id Label
    UILabel *idLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 40)];
    idLabel.text = @"ID";
    idLabel.textAlignment = NSTextAlignmentCenter;
    [rectangle addSubview:idLabel];
    
    //id TextField
    UITextField *idTextField = [[UITextField alloc] initWithFrame:CGRectMake(70, 0, 200, 40)];
    idTextField.borderStyle =   UITextBorderStyleLine;
    [rectangle addSubview:idTextField];
    
    //pw Label
    UILabel *pwLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 50, 40)];
    pwLabel.text = @"PW";
    pwLabel.textAlignment = NSTextAlignmentCenter;
    [rectangle addSubview:pwLabel];
    
    //pw TextField
    UITextField *pwTextField = [[UITextField alloc] initWithFrame:CGRectMake(70, 60, 200, 40)];
    pwTextField.borderStyle =   UITextBorderStyleLine;
    [rectangle addSubview:pwTextField];
    
    //re Label
    UILabel *reLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 50, 40)];
    reLabel.text = @"RE";
    reLabel.textAlignment = NSTextAlignmentCenter;
    [rectangle addSubview:reLabel];
    
    //re TextField
    UITextField *reTextField = [[UITextField alloc] initWithFrame:CGRectMake(70, 120, 200, 40)];
    reTextField.borderStyle =   UITextBorderStyleLine;
    [rectangle addSubview:reTextField];
    
    //join Button
    UIButton *joinButton = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-75, self.view.frame.size.height/2 + 50, 50, 40)];
    [joinButton setTitle:@"가입" forState:UIControlStateNormal];
    [joinButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:joinButton];
    
    //cancle Button
    UIButton *cancleButton = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2+25, self.view.frame.size.height/2 + 50, 50, 40)];
    [cancleButton setTitle:@"취소" forState:UIControlStateNormal];
    [cancleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:cancleButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
