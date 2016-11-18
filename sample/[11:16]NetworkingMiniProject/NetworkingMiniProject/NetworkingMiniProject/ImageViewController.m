//
//  ImageViewController.m
//  NetworkingMiniProject
//
//  Created by jakouk on 2016. 11. 16..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@property UIImageView *imageView;

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,100,self.view.frame.size.width, self.view.frame.size.height/2)];
    
    self.imageView.image = self.imageCell;

    [self.view addSubview:self.imageView];
    
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didshouldCellSelect:) name:ImageCellSelectNotification object:nil];
}

//- (void)didshouldCellSelect:(NSNotification *)noti {
//    
//    NSLog(@"HELLO");
//    NSDictionary *userInfo = [noti userInfo];
//    UIImage *cellImage = [userInfo objectForKey:@"image"];
//    self.imageView.image = cellImage;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
