#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray *checkONList;
@property UITableView *tv;
@property BOOL isEditting;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isEditting = NO;
    
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style: UIBarButtonItemStylePlain target:self action:@selector(onClickEditButton:)];
    [self.navigationItem setRightBarButtonItem:editButton];
    
    self.tv = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tv.delegate = self;
    self.tv.dataSource = self;
    [self.view addSubview:self.tv];
    
    self.checkONList = [[NSMutableArray alloc] initWithArray:@[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0]];
    
}


- (void)onClickEditButton:(UIBarButtonItem *)item
{
    
    if (!self.isEditting) {
        //테이블 뷰를 에디트 모드
        [self.tv setEditing:YES animated:YES];
        self.isEditting = YES;
    }else
    {   //일반 모드로 변신
        [self.tv setEditing:NO animated:YES];
        self.isEditting = NO;
    }
    
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return section+1;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    if (indexPath.row == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"switchCell"];
        
        UISwitch *rolex;
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"switchCell"];
            rolex = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 1000, 1000)];
            [rolex addTarget:self action:@selector(valuechangedRolext:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = rolex;
        }
        
        if (rolex== nil) {
            rolex = (UISwitch *)cell.accessoryView;
        }
        
        rolex.tag = indexPath.section;
        BOOL isON = [self.checkONList[indexPath.section] boolValue];
        [rolex setOn:isON];
        
    }else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        }
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"row %ld",indexPath.row];
    
    return cell;
}




-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"%ld",section];
}

- (void)valuechangedRolext:(UISwitch *)sender
{
    NSInteger index = sender.tag;
    if (sender.isOn) {
        
        [self.checkONList replaceObjectAtIndex:index withObject:@1];
    }else
    {
        [self.checkONList replaceObjectAtIndex:index withObject:@0];
    }
    NSLog(@"self.checkONList : %@",self.checkONList);
    
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //데이터 지우기
    //셀을 지우기
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

