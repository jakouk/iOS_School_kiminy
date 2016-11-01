//
//  ViewController.m
//  TabBar
//
//  Created by jakouk on 2016. 10. 25..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * __weak string = @"Hello";
    NSLog(@"string: %@", string);
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
    
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
