//
//  StoryViewController.m
//  TableVIew
//
//  Created by jakouk on 2016. 11. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "StoryViewController.h"
#import "CustomCell.h"

@interface StoryViewController () <UITableViewDelegate, UITableViewDataSource>


@property UIImage *cellImage;
@property (nonatomic, weak) IBOutlet UITableView *mainTableView;
@property NSArray *cellInfo;

@end

@implementation StoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self imgLoad];
    [self requestImageList];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cellInfo.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCell *cuCell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    //NSString *cellText = [NSString stringWithFormat:@"친구 %ld",indexPath.row];
    
    NSDictionary *dic = [self.cellInfo objectAtIndex:indexPath.row];
    
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[dic objectForKey:@"image_url"]]]];
    NSString *title = [dic objectForKey:@"title"];
    
    cuCell.cellLabel.text = title;
    cuCell.cellImage.image = image;
    
    return cuCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)imgLoad {
    //이미지 url
    NSURL *thumbnailURL = [NSURL URLWithString:@"http://ohmy-girl.com/omg_official/img_summer/common/main_visual.jpg"];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration: [NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data) {
            UIImage *image = [UIImage imageWithData:data];
            if (image) {
                dispatch_sync(dispatch_get_main_queue(), ^{
                    NSLog(@"%@",image);
                    self.cellImage = image;
                    [_mainTableView reloadData];
                });
            }
        }
    }];
    
    [task resume];
}

- (void)requestImageList {
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURL *url = [NSURL URLWithString:@"http://iosschool.yagom.net:8080/api/list/?user_id=200"];
    NSURLSessionDataTask *getDataTask = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data) {
            NSLog(@"response %@, error %@",response,error);
            NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];

            dispatch_async(dispatch_get_main_queue(), ^{
                self.cellInfo = [dic objectForKey:@"list"];
                [_mainTableView reloadData];
            });
        }
    }];
    [getDataTask resume];
}


@end
