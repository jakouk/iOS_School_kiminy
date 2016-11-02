//
//  JoinViewController.m
//  LoginPage
//
//  Created by jakouk on 2016. 11. 2..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "JoinViewController.h"
#import "MainViewController.h"


@interface JoinViewController ()

@property (weak, nonatomic) IBOutlet UITextField *idLabel;
@property (weak, nonatomic) IBOutlet UITextField *pwLabel;
@property (weak, nonatomic) IBOutlet UITextField *pwCheckLabel;

@end

@implementation JoinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)touchupInsideJoinButton:(UIButton *)sender {
    
    DataCenter *dataCenter = [DataCenter sharedData];
    
    //pw 와 re가 같은지 확인
    if ([self.pwLabel.text isEqualToString:self.pwCheckLabel.text]) {
        
        //가입하려는 id가 등록되어있는지 확인
        if ( [dataCenter joinUserID:self.idLabel.text userPW:self.pwLabel.text] ) {
            
            UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            UIViewController *main= [story instantiateViewControllerWithIdentifier:@"MainStoryBoard"];
            UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:main];
            
            
            [self presentViewController:navi animated:YES completion:nil];
            
            
        } else {
            
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"MISS Match" message:@"이미 존재하는 아이디 입니다." preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *checkAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
            
            [alert addAction:checkAction];
            [self presentViewController:alert animated:YES completion:nil];
         
        }
        
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"MISS Match" message:@"비밀번호가 다릅니다" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *checkAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:checkAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
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
