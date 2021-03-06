//
//  ViewController.m
//  ImagePractive
//
//  Created by jakouk on 2016. 10. 29..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (nonatomic)NSArray *Blackpink;
@property(nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property(nonatomic, retain) IBOutlet UIPageControl *pageControl;
@end

@implementation ViewController
@synthesize scrollView,pageControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Blackpink = @[@{@"name":@"블랙핑크",@"image":@"블랙핑크2.jpg"},
                       @{@"name":@"블랙핑크",@"image":@"블랙핑크3.png"},
                       @{@"name":@"블랙핑크",@"image":@"블랙핑크4.png"},
                       @{@"name":@"블랙핑크",@"image":@"블랙핑크5.png"},
                       @{@"name":@"제니",@"image":@"제니.jpeg"},
                       @{@"name":@"지수",@"image":@"지수.jpg"}];
 
    //Dictionary에서 imaged이름은 Array에 저장한다.
    NSMutableArray *thisImg = [[NSMutableArray alloc] init];
    for (NSDictionary *songName in self.Blackpink) {
        [thisImg addObject:[songName objectForKey:@"image"]];
    }
    NSUInteger imageCount  = thisImg.count;
    //array의 길이만큼 scrollView의 Content 사이즈를 잡아줌.
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width * imageCount, self.scrollView.frame.size.height)];
    
    //만들어지는
    for (NSInteger i = 0 ; i < imageCount; i += 1) {
        UIImage *img = [UIImage imageNamed:[thisImg objectAtIndex:i]];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.scrollView.frame.size.width * i, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height)];
        imgView.tag = i;
        imgView.contentMode = UIViewContentModeScaleAspectFill;
        imgView.image = img;
        [self.scrollView addSubview:imgView];
    }
        //ScrollView에 필요한 옵션을 적용한다.
        self.scrollView.showsVerticalScrollIndicator=NO;
        self.scrollView.showsHorizontalScrollIndicator=YES;
        self.scrollView.alwaysBounceVertical=NO;
        self.scrollView.alwaysBounceHorizontal=NO;
        self.scrollView.pagingEnabled=YES;          //페이징 가능 여부 YES
        self.scrollView.delegate=self;
        
        //pageControl에 필요한 옵션을 적용한다.
        self.pageControl.currentPage =0;               //현재 페이지 index는 0
        self.pageControl.numberOfPages=self.Blackpink.count;          //페이지 갯수는 3개
        //    [pageControl addTarget:self action:@selector(pageChangeValue:) forControlEvents:UIControlEventValueChanged]; //페이지 컨트롤 값변경시 이벤트 처리 등록
        
        [self.view addSubview:self.pageControl];
    
    
    
    ////페이지 컨트롤 값이 변경될때, 스크롤뷰 위치 설정
    //- (void) pageChangeValue:(id)sender {
    //    UIPageControl *pControl = (UIPageControl *) sender;
    //    [scrollView setContentOffset:CGPointMake(pControl.currentPage*320, 0) animated:YES];
}

//스크롤이 변경될때 page의 currentPage 설정
- (void)scrollViewDidScroll:(UIScrollView *)sender {
    CGFloat pageWidth = self.scrollView.frame.size.width;
    pageControl.currentPage = floor((scrollView.contentOffset.x - pageWidth / 3) / pageWidth) + 1;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidAppear:(BOOL)animated
{
    [self.scrollView flashScrollIndicators]; // 스크롤바를 보였다가 사라지게 함
}

@end

