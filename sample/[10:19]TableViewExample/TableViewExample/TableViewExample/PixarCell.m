//
//  PixarCell.m
//  TableViewExample
//
//  Created by jakouk on 2016. 10. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "PixarCell.h"

@interface PixarCell()

@property UIImageView *pixarImage;
@property UIView *coverView;
@property UILabel *movieName;

@end

@implementation PixarCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)createView {
    
    self.pixarImage = [[UIImageView alloc] init];
    self.pixarImage.contentMode = UIViewContentModeScaleAspectFill;
    //크기가 넘어가면 자르는 역활
    self.pixarImage.clipsToBounds = YES;
    [self addSubview:self.pixarImage];
    
    self.coverView = [[UIView alloc] init];
    self.coverView.backgroundColor = [[UIColor alloc] initWithRed:30.f/255 green:30.f/255 blue:30.f/255 alpha:1];
    [self.pixarImage addSubview:self.coverView];
    
    self.movieName = [[UILabel alloc] init];
    self.movieName.font = [UIFont boldSystemFontOfSize:40];
    self.movieName.textAlignment = NSTextAlignmentCenter;
    [self.coverView addSubview:self.movieName];
}

- (void)updateLayout {
    self.pixarImage.frame = self.bounds;
    self.coverView.frame = CGRectMake(10, 10, self.frame.size.width-20, self.frame.size.height-20);
    self.movieName.frame = CGRectMake(0, 20, self.coverView.frame.size.width, self.coverView.frame.size.height-40);
}

@end
