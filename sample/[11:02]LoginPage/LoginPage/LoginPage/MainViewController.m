//
//  MainViewController.m
//  LoginPage
//
//  Created by jakouk on 2016. 11. 2..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"
#import "LogOutViewController.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource >

@property (weak, nonatomic) IBOutlet UILabel *userId;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *cell;
@property NSInteger count;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@end

@implementation MainViewController

//cell이 될 NSMutableArray 초기화
- (void)awakeFromNib
{
    [super awakeFromNib];
    self.cell = [[NSMutableArray alloc] init];

}

- (void)viewDidLoad {
    
    DataCenter *dataCenter = [DataCenter sharedData];
    self.userId.text = [dataCenter userID];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //노티 등록시킴 ( 세그먼트 변화 감지 )
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didshouldChangeSelector:) name:@"noti" object:nil];
    // Do any additional setup after loading the view.
}

// 노티가 오면 실행되는 메서드
- (void)didshouldChangeSelector:(NSNotification *)noti {
    NSDictionary *userInfo = [noti userInfo];
    
    NSNumber *number = [userInfo objectForKey:@"segmentIndex"];
    self.segment.selectedSegmentIndex = number.integerValue;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//tableView의 셀 개수
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cell.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",self.count];
    }
    return cell;
}

//tableView의 cell을 선택하면 실행됨.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyBoard instantiateViewControllerWithIdentifier:@"LogOutViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

//추가 버튼을 누르면 NSMutableArray에 숫자를 추가하고 table를 reload함 
- (IBAction)touchupInsideAddTableCell:(UIBarButtonItem *)sender {
    
    NSLog(@"touch Add button");
    self.count += 1;
//    [self.cell addObject: [NSString stringWithFormat:@"%ld",self.count]];
    [self.cell addObject:[NSNumber numberWithInteger:self.count]];
    [self.tableView reloadData];
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
