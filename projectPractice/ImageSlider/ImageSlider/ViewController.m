//
//  ViewController.m
//  ImageSlider
//
//  Created by jakouk on 2016. 11. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

#define VIEW_COUNT 5
#define WIDTH_VIEW 250
#define HEIGHT_VIEW 180

@interface ViewController () <UIScrollViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;

@property NSInteger imageViewHeight;
@property NSInteger imageViewWidth;
@property NSInteger imageCount;

@property UIPageControl *pageControl;

@property NSArray *selectedImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self imageViewHeightWidth];
    
    _scrollView = [[UIScrollView alloc] init];
    _scrollView.delegate = self;
    _scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    //content size
    _scrollView.contentSize = CGSizeMake(_imageViewWidth*_imageCount, _imageViewHeight);
    
    NSLog(@"imageViewWidth : %ld, imageViewHeight : %ld",_imageViewWidth,_imageViewHeight );
    
    NSLog(@"contentWidth : %lf, contentHeight : %lf",_scrollView.contentSize.width, _scrollView.contentSize.height);
    
    _scrollView.pagingEnabled = YES;
    _scrollView.bounces = NO;
    [self.view addSubview:_scrollView];
    
    //제약조건 1
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_scrollView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0f
                                                           constant:0.0f]];
    
    //제약조건 2
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[_scrollView(width)]"
                                                                      options:0
                                                                      metrics:@{@"width":@(_imageViewWidth)}
                                                                        views:NSDictionaryOfVariableBindings(_scrollView)]];
    
       
    //제약조건 3
    //V:|-50-[_scrollView(height)] 상위에서 50pt 만큼 아래로 하고 Vertical은  height 만큼 한다.
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[_scrollView(height)]"
                                                                      options:0
                                                                      metrics:@{@"height":@(_imageViewHeight)}
                                                                        views:NSDictionaryOfVariableBindings(_scrollView)]];
    
    
    //pageControl
    _pageControl = [[UIPageControl alloc] init];
    _pageControl.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_pageControl];
    _pageControl.numberOfPages = _imageCount;
    _pageControl.currentPage = 0;
    _pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    
    //pageControl 제약조건
    //
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_scrollView]-5-[_pageControl(15)]"
                                                                      options:NSLayoutFormatAlignAllCenterX
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(_scrollView,_pageControl)]];
    
    
    self.selectedImage = @[[UIColor redColor],[UIColor orangeColor],[UIColor yellowColor],[UIColor greenColor],[UIColor blueColor]];
    
    for (NSInteger index = 0; index<_imageCount; index++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(index*_imageViewWidth, 0, _imageViewWidth, _imageViewHeight)];
        view.backgroundColor = [self.selectedImage objectAtIndex:index%self.selectedImage.count];
        [_scrollView addSubview:view];
    }
}

//스크롤뷰 델리게이트
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSInteger currentOffset = scrollView.contentOffset.x;
    NSInteger index = currentOffset / _imageViewWidth;
    
    //페이징 스크롤이 완전히 끝나야 페이지 인덱스가 바뀜
    if (currentOffset % _imageViewWidth == 0) {
        _pageControl.currentPage = index;
    }
    
    //페이지의 경계를 기준으로 가까운 뷰의 인덱스로 바뀜
    //    currentOffset = scrollView.contentOffset.x/WIDTH_VIEW * 10;
    //    if (currentOffset%10 <5) {
    //        index = currentOffset / 10;
    //    } else{
    //        index = currentOffset / 10 + 1;
    //    }
    //    pageControl.currentPage = index;
}

//나올 이미지의 높이와 넓이
- (void)imageViewHeightWidth{
    _imageViewWidth = self.view.frame.size.width-10;
    _imageViewHeight = self.view.frame.size.height/3;
    _imageCount = 5;
}

//선택된 이미지 보이게 하기
- (IBAction)touchupInsidePhotoButton:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    [imagePicker setDelegate:self];
    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    
    [self presentViewController:imagePicker
                       animated:YES
                     completion:nil];
    
}

//이미지 선택되면 실행
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    UIImage *image = nil;
    
    if (info[UIImagePickerControllerEditedImage]) {
        image = info[UIImagePickerControllerEditedImage];
    } else {
        image = info[UIImagePickerControllerOriginalImage];
    }
    
    [picker dismissViewControllerAnimated:YES
                               completion:^{
                               }];
}

@end
