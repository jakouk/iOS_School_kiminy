//
//  MyViewController.m
//  FIrstStoryBoard
//
//  Created by jakouk on 2016. 10. 17..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController () <UITextFieldDelegate>

@property IBOutlet UILabel *label;
@property IBOutlet UIButton *button;
@property IBOutlet UISegmentedControl *segment;
@property IBOutlet UITextField *textField;
@property IBOutlet UISlider *slider;
@property IBOutlet UISwitch *basicSwitch;

//빨강, 초록, 블루 생상지정
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;


//id, password textfield
@property (weak, nonatomic) IBOutlet UITextField *identifier;
@property (weak, nonatomic) IBOutlet UITextField *password;

//로그인버튼, 자동로그인 버튼
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *autoLoginBtn;


@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//클릭버튼 ( 버튼 클릭을 하면 버튼의 이름이 나옴 )
-(IBAction)clickButton:(id)sender{
    if([sender isKindOfClass:[UIButton class]]){
        UIButton *button = sender;
        NSLog(@"button title %@, tag %ld",[[button titleLabel] text], [button tag]);
    }else{
        NSLog(@"버튼이 아닙니다");
    }
}

//슬라이더의 값이 바뀌는 것이다.
-(IBAction)sliderValueChanged:(id)sender{
    if([sender isKindOfClass:[UISlider class]]){
        UISlider *slider = sender;
        
        NSLog(@"slider value  : %f",slider.value);
    }
}

//선택된 새그먼트확인
-(IBAction)segmentSelectionChanged:(id)sender{
    if([sender isKindOfClass:[UISegmentedControl class]]){
        UISegmentedControl *segment = sender;
        NSLog(@"segment : %ld",segment.selectedSegmentIndex);
    }
}

//스위치선택을 확인함.
-(IBAction)switchSelectionChanged:(id)sender{
    if([sender isKindOfClass:[UISwitch class]]){
        UISwitch *onOffSwitch = sender;
        if(onOffSwitch.on == YES){
            NSLog(@"switch select : %ld",onOffSwitch.on);
            [onOffSwitch isOn];
        }
        else{
            NSLog(@"switch select : %ld",onOffSwitch.on);
            [onOffSwitch isOn];
        }
    }
}

//슬라이더를 변화 시키면서 색이 RGB에 바뀌어서 변함.
-(IBAction)sliderValueChangedColor:(id)sender{
    

        float redValue = self.redSlider.value;
        float greenValue = self.greenSlider.value;
        float blueValue = self.blueSlider.value;
        
        self.colorView.backgroundColor = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0f];
}

//로그인버튼을 클릭하면 ID, password가 나옴.
-(IBAction)clickLoginButton:(id)sender{
    
    if([sender isKindOfClass:[UIButton class]]){
        
        UIButton *button = sender;
        
        if([button.titleLabel.text isEqualToString:@"로그인"]){
            NSLog(@"%@",self.identifier.text);
            NSLog(@"%@",self.password.text);
        }else{
            [self.autoLoginBtn setSelected:![self.autoLoginBtn isSelected]];
            NSLog(@"hello");
        }
    }
}

//textfield에 커서를 넣으면 알려줌.
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"textFieldShouldBeginEditing");
    return YES;
}

//textfield에 @를 입력할수 없도록 만듬.
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if([string containsString:@"@"]){
        return NO;
    }
    return YES;
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
