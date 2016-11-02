//
//  ViewController.m
//  LoginPage
//
//  Created by jakouk on 2016. 11. 2..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *idLabel;
@property (weak, nonatomic) IBOutlet UITextField *pwLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchupInsideLoginButton:(UIButton *)sender {
    
    DataCenter *dataCenter = [DataCenter sharedData];
    
    //ID, PW 를 확인함.
    if ( [dataCenter haveUserID:self.idLabel.text userPW:_pwLabel.text]) {
        
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *main= [story instantiateViewControllerWithIdentifier:@"MainStoryBoard"];
        UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:main];
        
        [dataCenter setAutoLogin:YES];
        [self presentViewController:navi animated:YES completion:nil];
        
    } else {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"MISS Match" message:@"ID or 비밀번호가 다릅니다" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *checkAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:checkAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
}


@end
