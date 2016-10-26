//
//  NavigationBar.m
//  NavigationController
//
//  Created by jakouk on 2016. 10. 25..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "NavigationBar.h"

typedef enum{
    
    WingNaviBarTypeNomal = 0,
    WingNaviBarTypeAdd = 1
    
}WingNaviBarType;

@interface NavigationBar ()

@property UIViewController *uv;

@end

@implementation NavigationBar

- (instancetype)initWithNavigationBar:(UIViewController *)uv {
    self = [super init];
    if (uv != nil) {
        [self createNavigationBar];
        self.frame = CGRectMake(0, 0, uv.view.frame.size.width, 44);
        self.backgroundColor = [UIColor grayColor];
        self.uv = uv;
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)createNavigationBar {
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backButton setTitle:@"Back" forState:UIControlStateHighlighted];
    [backButton setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [backButton addTarget:self action:@selector(touchupInsideBackButton:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:backButton];
}

- (void)touchupInsideBackButton:(UIButton *)sender {
    
    [self.uv.navigationController popViewControllerAnimated:YES];
}

@end
