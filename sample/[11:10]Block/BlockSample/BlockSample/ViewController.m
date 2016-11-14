//
//  ViewController.m
//  BlockSample
//
//  Created by jakouk on 2016. 11. 10..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"
#import "SampleViewController.h"

@interface ViewController ()

@property SampleViewController *sample;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.sample = [[SampleViewController alloc] init];
    [self.sample myMethod:^(NSInteger num) {
        NSLog(@"ingBlock : %ld",num);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchupInsideBtn:(id)sender {
    [self.sample playMethod:30];
}

@end
