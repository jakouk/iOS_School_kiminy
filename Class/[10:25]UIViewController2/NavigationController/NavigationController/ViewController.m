//
//  ViewController.m
//  NavigationController
//
//  Created by jakouk on 2016. 10. 25..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController setNavigationBarHidden:YES];
    
    UIButton *itemBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [itemBtn addTarget:self action:@selector(selectedButtonItem:) forControlEvents:UIControlEventTouchUpInside];
    itemBtn.frame = CGRectMake(200, 100, 100, 44);
    [itemBtn setTitle:@"custom" forState:UIControlStateNormal];
    [itemBtn setTintColor:[UIColor whiteColor]];
    [itemBtn setBackgroundColor:[UIColor redColor]];
    
    UIBarButtonItem *cItem = [[UIBarButtonItem alloc] initWithCustomView:itemBtn];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"hihi" style:UIBarButtonItemStylePlain target:self action:@selector(onSelectedItem:)];
    
    self.navigationItem.leftBarButtonItem = cItem;
    self.navigationItem.rightBarButtonItem = item;
    
    [self createNavigationBar];
    
}

- (void)selectedButtonItem:(UIBarButtonItem *)sender {
    NSLog(@"btn click");
}

- (void)onSelectedItem:(UIBarButtonItem *)sender {
    NSLog(@"hihihi");
}

- (void)createNavigationBar {
    UIView *navi = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    navi.backgroundColor = [UIColor grayColor];
    [self.view addSubview:navi];
}

- (IBAction)touchupInsideButton:(id)sender {
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController1 *vc2 = [story instantiateViewControllerWithIdentifier:@"ViewController1"];
    [self.navigationController pushViewController:vc2 animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
