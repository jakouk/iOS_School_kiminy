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

- (IBAction)touchupInsideMainScreen:(UITapGestureRecognizer *)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"사진소스 선택" message:@"사진을 가져올 소스를 선택해 주세요" preferredStyle:UIAlertControllerStyleActionSheet];
    
    void (^handlerBlock)(UIAlertAction *) = ^(UIAlertAction * _Nonnull action) {
        
        if ([action.title isEqualToString:@"사진라이브러리"]) {
            UIImagePickerController *cameraController = [[UIImagePickerController alloc] init];
            cameraController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            cameraController.allowsEditing = NO;
            cameraController.mediaTypes
            = [UIImagePickerController availableMediaTypesForSourceType: UIImagePickerControllerSourceTypePhotoLibrary];
            cameraController.delegate = self;
            [self presentViewController:cameraController animated: YES completion: nil];
            
        } else if ([action.title isEqualToString:@"사진앨범"]) {
            UIImagePickerController *cameraController = [[UIImagePickerController alloc] init];
            cameraController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
            cameraController.allowsEditing = NO;
            cameraController.mediaTypes
            = [UIImagePickerController availableMediaTypesForSourceType: UIImagePickerControllerSourceTypeSavedPhotosAlbum];
            cameraController.delegate = self;
            [self presentViewController:cameraController animated: YES completion: nil];
            
        }
        
    };
    
    UIAlertAction *libray = [UIAlertAction actionWithTitle:@"사진라이브러리" style:UIAlertActionStyleDefault handler:handlerBlock];
    
    UIAlertAction *pictureAlbum = [UIAlertAction actionWithTitle:@"사진앨범" style:UIAlertActionStyleDefault handler:handlerBlock];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:handlerBlock];
    
    [alertController addAction:libray];
    [alertController addAction:pictureAlbum];
    [alertController addAction:cancel];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    if (picker.sourceType == UIImagePickerControllerSourceTypePhotoLibrary) {
        
        self.imageView.image = image;
        [self.imageView setContentMode:UIViewContentModeScaleToFill];
        
    } else {
        self.imageView.image = image;
        [self.imageView setContentMode:UIViewContentModeScaleAspectFit];

    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"이미지를 성공적으로 가져왔어요." message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *libray = [UIAlertAction actionWithTitle:@"확인"
                                                     style:UIAlertActionStyleCancel
                                                   handler:nil];
    [alertController addAction:libray];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
