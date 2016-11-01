//
//  ViewController.m
//  NSNotificationSample
//
//  Created by jakouk on 2016. 10. 31..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerSetting.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (weak, nonatomic) IBOutlet UILabel *Label2;
@property (weak, nonatomic) IBOutlet UILabel *Label3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didShouldChangedSelector:) name:@"noti" object:nil];
}

- (void)didShouldChangedSelector:(NSNotification * )noti {
    NSDictionary *userInfo = noti.userInfo;
    
    UIColor *fontColor = [userInfo objectForKey:@"textColor"];
    UIFont *font = [userInfo objectForKey:@"textSize"];
    
    self.Label1.textColor = fontColor;
    self.Label1.font = font;
    
    self.Label2.textColor = fontColor;
    self.Label2.font = font;
    
    self.Label3.textColor = fontColor;
    self.Label3.font = font;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
