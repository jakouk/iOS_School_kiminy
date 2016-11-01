//
//  ViewControllerSetting.m
//  NSNotificationSample
//
//  Created by jakouk on 2016. 10. 31..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewControllerSetting.h"

@interface ViewControllerSetting ()
@property (weak, nonatomic) IBOutlet UILabel *previewLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sizeSegment;

//@property CGFloat red;
//@property CGFloat blue;
//@property CGFloat green;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@end

@implementation ViewControllerSetting

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sliderChangeColor:(id)sender {
    
    self.previewLabel.textColor = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1.0];
}

- (IBAction)changedLabel:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
    NSDictionary *userInfo = @{@"textSize":self.previewLabel.font,@"textColor":self.previewLabel.textColor};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"noti" object:nil userInfo:userInfo];
}

- (IBAction)stepperChangedTextSize:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.previewLabel.font = [UIFont systemFontOfSize:10];
    } else if (sender.selectedSegmentIndex == 1) {
        self.previewLabel.font = [UIFont systemFontOfSize:20];
    } else if (sender.selectedSegmentIndex == 2) {
        self.previewLabel.font = [UIFont systemFontOfSize:30];
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
