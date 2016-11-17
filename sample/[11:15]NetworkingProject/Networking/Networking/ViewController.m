//
//  ViewController.m
//  Networking
//
//  Created by jakouk on 2016. 11. 15..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *imageTableView;
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

@property NSMutableArray *userData;
@property NSInteger count;

@property (weak, nonatomic) IBOutlet UINavigationItem *navigationTitle;

@property NSString *cellSubject;
@property RequestObject *object;
@property NSDictionary *userDic;


@end

@implementation ViewController

//초기화면 count, userData는 초기화
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageTableView.delegate = self;
    self.imageTableView.dataSource = self;
    
    self.object = [RequestObject sharedUserResqusetObject];
    [self.object requestImageList];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tableViewReloadData) name:@"noti" object:nil];
    
}

//화면 실행되면서 alert 확인
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [self alertIdCheck];
}

//tableView ReloadData
- (void)tableViewReloadData {
    
    self.object = [RequestObject sharedUserResqusetObject];
    self.userData = [[NSMutableArray alloc] init];
    NSLog(@"tableViewReloadData %@",self.object.list);
    self.userData = [self.object.list objectForKey:@"list"];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.imageTableView reloadData];
    });
 
}

//유저 ID
- (void)alertIdCheck {
    
    if ([self.navigationTitle.title isEqualToString:@"title"]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"유저 ID 입력" message:@"유저 ID를 입력해주세요" preferredStyle:UIAlertControllerStyleAlert];
        
        [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        }];
        UIAlertAction *checked = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if  ([alert.textFields.firstObject.text isEqualToString:@"150"]) {
                self.navigationTitle.title = @"150";
            } else {
                [self alertIdCheck];
            }
        }];
        
        [alert addAction:checked];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//tableView section number
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.userData.count;
}

//tableview cell setting
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSDictionary *dataDic = [self.userData objectAtIndex:indexPath.row];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[dataDic objectForKey:@"image_url"]]]];
    cell.imageView.image = image;
    cell.textLabel.text = [dataDic objectForKey:@"title"];
    return cell;
}

//touch하면 생성됨.
- (IBAction)touchupInsideImageInsertButton:(id)sender {
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.allowsEditing = NO;
    imagePickerController.delegate = self;
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePickerController animated: YES completion: nil];
}

//이미지 피커, cell 정보 추가
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info {

    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:picker completion:nil];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"사진제목" message:@"사진제목을 입력해주세요." preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
    }];
    UIAlertAction *checked = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        NSString  *str = alert.textFields.firstObject.text;
        
        [dic setObject:str forKey:@"titleName"];
        [dic setObject:image forKey:@"image"];
        
        [self.userData addObject:dic];
        [self.imageTableView reloadData];
    }];
    [alert addAction:checked];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
