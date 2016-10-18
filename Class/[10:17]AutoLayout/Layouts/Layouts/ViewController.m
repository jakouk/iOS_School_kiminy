//
//  ViewController.m
//  Layouts
//
//  Created by jakouk on 2016. 10. 18..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *layoutSize;
@property (weak, nonatomic) IBOutlet UILabel *sizeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changedLayoutSize:(id)sender{
    
    UIStepper *stepper = sender;
    
    CGFloat size = stepper.value;
    self.layoutSize.constant = size;
    self.sizeLabel.text = [NSString stringWithFormat:@"%lf",size];
    
    
}

@end
