//
//  ViewController.m
//  TableView
//
//  Created by jakouk on 2016. 10. 14..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"
#import "IdolCell.h"

@interface ViewController ()    <UITableViewDelegate, UITableViewDataSource>

@property UITableView *tvView;
@property NSArray *dataList;

@end

@implementation ViewController


//tableView 생성 및 데이터 생성
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tvView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tvView.delegate = self;
    self.tvView.dataSource = self;
    [self.view addSubview:self.tvView];
    
    
    self.dataList = @[@{@"title":@"1집",@"imageURL":@"1집.jpg"},
                      @{@"title":@"2집",@"imageURL":@"2집.jpg"},
                      @{@"title":@"3집",@"imageURL":@"3집.jpg"},];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//row 생성
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataList.count;
}

//cell 생성
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //custom한 cell을 추가함.
    IdolCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil){
        cell = [[IdolCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    NSDictionary *data = self.dataList[indexPath.row];
    [cell setBackgroundImageName:[data objectForKey:@"imageURL"]];
    [cell setTitle:[data objectForKey:@"title"]];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}

//하나의 row 높이를 설정.
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.view.frame.size.height;
}


@end
