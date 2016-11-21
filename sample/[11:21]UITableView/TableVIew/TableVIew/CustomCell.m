//
//  CustomCell.m
//  TableVIew
//
//  Created by jakouk on 2016. 11. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.cellLabel = [[UILabel alloc] init];
        self.cellImage = [[UIImageView alloc] init];
        self.cellImage.contentMode = UIViewContentModeScaleAspectFit;
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.cellLabel = [[UILabel alloc] init];
    self.cellImage = [[UIImageView alloc] init];
    self.cellImage.contentMode = UIViewContentModeScaleAspectFit;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.cellLabel.frame = CGRectMake(300, 0, 100, 100);
    self.cellImage.frame = CGRectMake(0, 0, 200, 100);
    
    NSLog(@"%@",self.cellImage.image);
    [self addSubview:self.cellImage];
    [self addSubview:self.cellLabel];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    

    // Configure the view for the selected state
}

@end
