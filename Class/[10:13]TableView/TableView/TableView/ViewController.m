//
//  ViewController.m
//  TableView
//
//  Created by jakouk on 2016. 10. 13..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate , UITableViewDataSource>

@property NSArray *carName;
@property NSArray *animalName;
@property NSArray *animal;
@property NSDictionary *animals;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    self.carName = @[@"티코",@"람보",@"미니쿠퍼",@"맥나렌",@"레토나",@"포니",@"부가티",@"벨로스터",@"시발차",@"두돈반"];
    
    self.animalName = @[@{@"name":@"포유류",@"user":@[@"사자",@"호랑이",@"토끼",@"여우"]},
                        @{@"name":@"양서류",@"user":@[@"개구리",@"공룡",@"도룡뇽"]},
                        @{@"name":@"여류",@"user":@[@"고등어",@"참치",@"게",@"꽁치",@"장어"]}];
    
    self.animals = @{@"b":@[@{@"name":@"bear",@"image":@"bear.jpg"},
                          @{@"name":@"black_swan",@"image":@"black_swan.jpg"},
                          @{@"name":@"buffalo",@"image":@"buffalo.jpg"}],
                    @"c":@[@{@"name":@"camel",@"image":@"camel.jpg"},
                          @{@"name":@"cockatoo",@"image":@"cockatoo.jpg"}],
                     @"d":@[@{@"name":@"dog",@"image":@"dog.jpg"},
                        @{@"name":@"donkey",@"image":@"donkey.jpg"}],
                     @"e":@[@{@"name":@"elephant",@"image":@"elephant.jpg"},
                            @{@"name":@"emu",@"image":@"emu.jpg"}]
                    };
    
    
    UITableView *tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
 
    //row 개수 설정
    NSArray *animalsName = [[NSMutableArray alloc]init];
    NSMutableArray *animals = [[NSMutableArray alloc]init];
    
    //b,c,d,e 인텍스를 저장
    animalsName = self.animals.allKeys;
    
    //select에 맞는 row를 설정
    [animals addObjectsFromArray: [self.animals objectForKey:animalsName[section]]];
    return animals.count;
}

//header를 4개를 생성함
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSArray *animalsName = self.animals.allKeys;
    
    return animalsName.count;
}

//tableView의 하나의 셀을 생성 (0,0) -> (3,1) 까지 진행됨.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    NSArray *animalsName = [[NSMutableArray alloc]init];
    NSMutableArray *animals = [[NSMutableArray alloc]init];
    
    //키들을 저장
    animalsName = self.animals.allKeys;
    
    //animalsName에 저장된 데이터를  indexPath.section으로 가져옴.
    animals = [self.animals objectForKey:animalsName[indexPath.section]];
    
    //animals에 저장된 데이터를 indexPath.row 로 가져옴.
    NSDictionary *animalName = animals[indexPath.row];
    
    //name키 값을 가져옴.
    NSString *userList = [animalName objectForKey:@"name"];
    cell.textLabel.text = userList;
    
    //image 키 값을 가져옴.
    UIImage *images = [UIImage imageNamed:[animalName objectForKey:@"image"]];
    
    cell.imageView.image = images;
    
    return cell;
}

//셀 하나의 높이 설정
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


// 헤더의 이름을 설정
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSArray *animalsName = self.animals.allKeys;
    
    return animalsName[section];
}

//선택을 해도 선택되지 않고 하일라이트 상태에서만 가능함.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
