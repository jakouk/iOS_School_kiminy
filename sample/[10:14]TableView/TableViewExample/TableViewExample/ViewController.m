//
//  ViewController.m
//  TableViewExample
//
//  Created by jakouk on 2016. 10. 14..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()    <UITableViewDelegate, UITableViewDataSource>

//데이터 저장
@property NSDictionary *animals;


@property NSMutableArray *selectArray;
@property NSMutableArray *checkONList;
@property UITableView *table;
@property BOOL isEditing;

//animals의 allkeys 저장
@property NSArray *header;

@end

@implementation ViewController

- (void)setAnimalData
{
    self.animals = @{@"B" : @[@"Bear", @"Black Swan", @"Buffalo"],
                     @"C" : @[@"Camel", @"Cockatoo"],
                     @"D" : @[@"Dog", @"Donkey"],
                     @"E" : @[@"Emu"],
                     @"G" : @[@"Giraffe", @"Greater Rhea"],
                     @"H" : @[@"Hippopotamus", @"Horse"],
                     @"K" : @[@"Koala"],
                     @"L" : @[@"Lion", @"Llama"],
                     @"M" : @[@"Manatus", @"Meerkat"],
                     @"P" : @[@"Panda", @"Peacock", @"Pig", @"Platypus", @"Polar Bear"],
                     @"R" : @[@"Rhinoceros"],
                     @"S" : @[@"Seagull"],
                     @"T" : @[@"Tasmania Devil"],
                     };
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //edit키 생성
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(onClickEditButton:)];
    [self.navigationItem setRightBarButtonItem:editButton];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setAnimalData];
    
    self.table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.view addSubview:self.table];
    
    //switch의 select를 확인하기 위한 NSMutableArray
    self.checkONList = [[NSMutableArray alloc]initWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0, nil];
    self.isEditing = NO;
}

-(void)onClickEditButton:(UIBarButtonItem *)item{
    //테이블뷰를 에디트 모드
    
    if(!self.isEditing){
        //테이블 뷰 에디트 모드
        [self.table setEditing:YES animated:YES];
        self.isEditing = YES;
        
    }else{
        //일반 모드
        [self.table setEditing:NO animated:NO];
        self.isEditing = NO;
    }
    
    //tableView dataSource canEditting~~
    //tableView delegate edittingStyle
    //
}


//section 생성
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    self.header = self.animals.allKeys;
    return self.header.count;
}

//row 생성
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSArray *cell = [self.animals objectForKey:self.header[section]];
    
    return cell.count;
    
}

//셀 생성
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell;
    NSArray *row = [self.animals objectForKey:self.header[indexPath.section]];
    
    if(indexPath.row == 0 ){
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"switchCell"];
        UISwitch *seiko;
        
        if(cell == nil){
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"switchCell"];
        }
        
        seiko = [[UISwitch alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
        [seiko addTarget:self action:@selector(valuechangedSeiko:) forControlEvents:UIControlEventValueChanged];
        seiko.tag = indexPath.section;
        cell.accessoryView = seiko;
        //테이블뷰 이름을 줌.
        cell.textLabel.text = row[indexPath.row];
        
        //이름에 jpg를 붙임.
        NSString *str = [[NSString alloc]initWithFormat:@"%@.jpg",row[indexPath.row]];
        str = [self imageNamejpg:str];
        str = [str lowercaseString];
        cell.imageView.image = [UIImage imageNamed:str];

        BOOL isON = [self.checkONList[indexPath.section]boolValue];
        
        [seiko setOn:isON];
    }else{
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        if(cell == nil){
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
        cell.textLabel.text = row[indexPath.row];
        
        //이름에 jpg를 붙임.
        NSString *str = [[NSString alloc]initWithFormat:@"%@.jpg",row[indexPath.row]];
        str = [self imageNamejpg:str];
        str = [str lowercaseString];
        cell.imageView.image = [UIImage imageNamed:str];
    }
    return cell;
    
}

//선택된것 저장
-(void)valuechangedSeiko:(UISwitch *)switched{
    
    NSInteger index = switched.tag;
    
    //switched가 off 되있으면 1, on 되어 있으면 0
    if(switched.isOn){
        [self.checkONList replaceObjectAtIndex:index withObject:@"1"];
    }else{
        [self.checkONList replaceObjectAtIndex:index withObject:@"0"];
    }
    
}

//두글자로 되어있는 사진이름에 (_)추가
-(NSString *)imageNamejpg:(NSString *)string{
    
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return string;
}

//section 이름 생성
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return self.header[section];
}

//tableView를 선택했을때 alert가 뜨게 하는 메서드 작성 ( 선택된 위치 값을 가져오는 메서드 활용 )
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //선택된것 누를때만 색변화
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UITableViewHeaderFooterView *section = [tableView headerViewForSection:indexPath.section];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"선택"
                                                                             message:[NSString stringWithFormat:@"%@ 섹션의 %@을 선택 했습니다",section.textLabel.text, cell.textLabel.text]
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:okBtn];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

//Edit 가능하게 하는 것 ( 지우거나 이동하도록 )
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

// 테이블 셀의 스타일 값을 리턴해줌
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}

//
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //데이터 지우기
    NSMutableArray *alpha = [self.animals objectForKey:self.header[indexPath.section]];
    
    [alpha removeObjectAtIndex:indexPath.row];
    
    //셀을 지우기
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

//셀이 이동 가능하도록 하는것
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

//section의 row를 이동가능하게 한다.
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
