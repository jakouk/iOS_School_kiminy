//
//  ViewController.m
//  Precomplied
//
//  Created by jakouk on 2016. 10. 31..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"____ awake from nib");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //[[MySingleton sharedInstanceance] justMethod];
    NSLog(@"____ view Did Load");
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
