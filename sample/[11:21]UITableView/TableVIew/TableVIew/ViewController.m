//
//  ViewController.m
//  TableVIew
//
//  Created by jakouk on 2016. 11. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"
#import "StoryViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property UITableView *table;
@property NSMutableArray *numberArray;
@property UIBarButtonItem *addButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //array
    self.numberArray = [[NSMutableArray alloc] init];
    
    //tableView footer, header view
    UIScrollView *headerScrollerView = [[UIScrollView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    [headerScrollerView setContentSize:CGSizeMake(self.view.bounds.size.width*5, 100)];
    
    UIView *headerView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    headerView1.backgroundColor = [UIColor redColor];
    [headerScrollerView addSubview:headerView1];
    
    UIView *headerView2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, 100)];
    headerView2.backgroundColor = [UIColor purpleColor];
    [headerScrollerView addSubview:headerView2];
    
    UIView *headerView3 = [[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width*2, 0, self.view.bounds.size.width, 100)];
    headerView3.backgroundColor = [UIColor blackColor];
    [headerScrollerView addSubview:headerView3];
    
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    footerView.backgroundColor = [UIColor blueColor];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    self.table.tableHeaderView = headerScrollerView;
    self.table.tableFooterView = footerView;
    [self.view addSubview:self.table];
    
    self.addButton = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(touchupInsideButton:)];
    self.addButton.title = @"Add";
    self.navigationItem.leftBarButtonItem = self.addButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.numberArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [self.numberArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)touchupInsideButton:(UIBarButtonItem *)button {
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"yyyy/MM/dd hh:mm:ss"];
    NSString *str = [NSString stringWithFormat:@"%@",[DateFormatter stringFromDate:[NSDate date]]];
    [self.numberArray addObject:str];
    [self.table reloadData];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    NSString *cellMakeTime = cell.textLabel.text;
//    UIViewController *cellView = [[UIViewController alloc] init];
//    cellView.navigationItem.title = cellMakeTime;
//    cellView.view.backgroundColor = [UIColor whiteColor];
//    UILabel *timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 100, 200, 100)];
//    timeLabel.text = cellMakeTime;
//    [cellView.view addSubview:timeLabel];
    
    StoryViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"StoryViewController"];
    
    [self.navigationController pushViewController:svc
                                         animated:YES];
    
}


@end
