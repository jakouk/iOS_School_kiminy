//
//  ViewController.m
//  UIAlertController
//
//  Created by jakouk on 2016. 10. 27..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()    <UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *touchCount;
@property (weak, nonatomic) IBOutlet UILabel *touchCoordinate;
@property NSInteger count;


@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.count = 0;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)ToucthupInsideAlert:(id)sender {
    
    [self showAlertController:UIAlertControllerStyleAlert];
}

- (IBAction)TouchupInsideActionSheet:(id)sender {
    [self showAlertController:UIAlertControllerStyleActionSheet];
    
}

- (void)showAlertController:(UIAlertControllerStyle)style {
    
    switch(style) {
        case UIAlertControllerStyleAlert:
        case UIAlertControllerStyleActionSheet:
            NSLog(@"제대로된 스타일이 입력되었습니다.");
            break;
            
        default:
            NSLog(@"스타일이 잘못 입력되었습니다.");
            return;
            break;
    }
    
    void (^handlerBlock)(UIAlertAction *) = ^(UIAlertAction * _Nonnull action) {
        NSLog(@"핸들러가 호출되었습니다.");
        //style로 확인 할수도 있다.
        if ([action.title isEqualToString:@"확인"]){
            NSLog(@"okAction");
        } else if ([action.title isEqualToString:@"파괴"]) {
            NSLog(@"destoryAction");
        } else if ([action.title isEqualToString:@"취소"]) {
            NSLog(@"cancleAction");
        }
    };
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                             message:[NSString stringWithFormat:@"Alert Controller를 사용했습니다."]
                                                                      preferredStyle:style];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:handlerBlock];
    
    UIAlertAction *destoryAction = [UIAlertAction actionWithTitle:@"파괴" style:UIAlertActionStyleDestructive handler:handlerBlock];
    
    UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:handlerBlock];
    
    [alertController addAction:okAction];
    [alertController addAction:destoryAction];
    [alertController addAction:cancleAction];
    
    [self presentViewController:alertController animated:YES completion:^{
        NSLog(@"화면 전환을 마쳤습니다.");
    }];
    
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {

    CGPoint coordinate = gestureRecognizer.accessibilityActivationPoint;
    
    self.count += 1;
    self.touchCount.text = [NSString stringWithFormat:@"%ld",self.count];
    self.touchCoordinate.text = [NSString stringWithFormat:@"(%lf, %lf)",coordinate.x,coordinate.y];
    
    return YES;
}



- (IBAction)touchInsideMainScreen:(UITapGestureRecognizer *)sender {
    //터치 횟수 지정
    self.count += 1;
    self.touchCount.text = [NSString stringWithFormat:@"%ld",self.count];
    
    //터치한 좌표 위치
    CGPoint coordinate = [sender locationInView:sender.view];
    self.touchCoordinate.text = [NSString stringWithFormat:@"(%0.3lf, %0.3lf)",coordinate.x,coordinate.y];
    
}

//view의 위치값 반환
- (CGPoint)locationInView:(nullable UIView*)view{
    return view.accessibilityActivationPoint;
}


@end
