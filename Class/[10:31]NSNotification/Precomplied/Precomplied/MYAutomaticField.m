//
//  MYAutomaticField.m
//  Precomplied
//
//  Created by jakouk on 2016. 10. 31..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "MYAutomaticField.h"
@interface MYAutomaticField () <UITextFieldDelegate>
@end

@implementation MYAutomaticField

//스토리보드에서 만들어지는 객체를 Controll하기 위한 것.
- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"____ label awake from nib");
    if ([self delegate] == nil) {
        [self setDelegate:self];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField endEditing:YES];
    return YES;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
