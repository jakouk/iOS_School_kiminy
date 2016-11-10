//
//  SampleViewController.m
//  BlockSample
//
//  Created by jakouk on 2016. 11. 10..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@property playBlock testBlock;

@end

@implementation SampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)myMethod:(playBlock)myNum {
    NSLog(@"start");
    self.testBlock = myNum;
    NSLog(@"end");
}

- (void)plsyMethod:(NSInteger)num {
    self.testBlock(num);
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
