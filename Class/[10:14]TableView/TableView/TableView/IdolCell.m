//
//  IdolCell.m
//  TableView
//
//  Created by jakouk on 2016. 10. 14..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "IdolCell.h"

@interface IdolCell()

    @property UIImageView *backgroundImage;
    @property UIView *coverView;
    @property UILabel *titleLb;

@end

@implementation IdolCell

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}

//초기화 함수 ( 조금 더 알아봐야할 필요가 있음 )
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
    }
    return self;
}

//크기가 설정 될때 마다 불림.
-(void)layoutSubviews{
    
    [super layoutSubviews];
    [self updateLayout];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//cell의 모양과 크기, 사진, 글자등을 설정함.
-(void)createView{
    
    self.backgroundImage = [[UIImageView alloc]init];
    self.backgroundImage.contentMode = UIViewContentModeScaleAspectFill;
    self.backgroundImage.clipsToBounds = YES;
    [self addSubview:self.backgroundImage];
    
    self.coverView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, self.frame.size.width-20, self.frame.size.height-20)];
    self.coverView.backgroundColor = [[UIColor alloc]initWithRed:30.f/255 green:30.f/255 blue:30.f/255 alpha:0.5];
    [self.backgroundImage addSubview:self.coverView];
    
    self.titleLb = [[UILabel alloc]init];
    self.titleLb.font = [UIFont boldSystemFontOfSize:40];
    self.titleLb.textAlignment = NSTextAlignmentCenter;
    self.titleLb.textColor = [UIColor whiteColor];
    [self.coverView addSubview:self.titleLb];
}

//사진크기를 병견하기 위한 것.
-(void)updateLayout{
    self.backgroundImage.frame = self.bounds;
    self.coverView.frame = CGRectMake(10, 10, self.frame.size.width-20, self.frame.size.height-20);
    self.titleLb.frame = CGRectMake(0, 20, self.coverView.frame.size.width, self.coverView.frame.size.height-40);
}

//이미지를 설정해 주기 위한것.
-(void)setBackgroundImageName:(NSString *)name{
    self.backgroundImage.image = [UIImage imageNamed:name];
}

//타이틀 이름을 설정해 주기 위한것.
-(void)setTitle:(NSString *)title{
    self.titleLb.text = title;
}

@end
