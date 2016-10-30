//
//  ViewController.m
//  MyImagePicker
//
//  Created by jakouk on 2016. 10. 27..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate >
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//화면을 터치했을때 사용되는 메소드
- (IBAction)touchupInsideMainScreen:(UITapGestureRecognizer *)sender {
    //블럭으로 액션 시트의 버튼을 선택했을때 UIImagePickerController를 사용할수 있다.
    void (^handlerBlock)(UIAlertAction *) = ^(UIAlertAction * _Nonnull action) {
        UIImagePickerController *cameraController = [[UIImagePickerController alloc] init];
        cameraController.allowsEditing = NO;
        cameraController.delegate = self;
        
        if ([action.title isEqualToString:@"사진라이브러리"]) {
            cameraController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        } else if ([action.title isEqualToString:@"사진앨범"]) {
            cameraController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        }
        
        [self presentViewController:cameraController animated: YES completion: nil];
    };
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"사진소스 선택" message:@"사진을 가져올 소스를 선택해 주세요" preferredStyle:UIAlertControllerStyleActionSheet];
    //UIAlertAction을 for로 돌려서 간단하게 만든다.
    NSArray *option = @[@"사진라이브러리",@"사진앨범",@"카메라"];
    for(NSString *name in option){
        UIAlertAction *option = [UIAlertAction actionWithTitle:name style:UIAlertActionStyleDefault handler:handlerBlock];
        [alertController addAction:option];
    }
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:handlerBlock];
    [alertController addAction:cancel];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

//이미지가 선택되면 나오는 델리게이트
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info {
    //선택된 이미지를 image에 넣는다.
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    //선택한 앨범, 라이브러리에 따라서 사진크기 다르게 설정
    if (picker.sourceType == UIImagePickerControllerSourceTypePhotoLibrary) {
        self.imageView.image = image;
        [self.imageView setContentMode:UIViewContentModeScaleToFill];
    } else {
        self.imageView.image = image;
        [self.imageView setContentMode:UIViewContentModeScaleAspectFit];
    }
    //picker를 닫는다. ( modal, dismiss )
    [picker dismissViewControllerAnimated:YES completion:nil];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"이미지를 성공적으로 가져왔어요." message:@"" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *libray = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:libray];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
