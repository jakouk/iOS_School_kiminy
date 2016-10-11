//
//  ItemView.h
//  VendingMachine
//
//  Created by jakouk on 2016. 10. 11..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ItemViewDelegate ;

@interface ItemView : UIView

@property (nonatomic, weak) id <ItemViewDelegate> delegate;

- (instancetype)initWithData:(NSDictionary * )data;
-(NSString *)getTitle;
-(NSInteger)getCost;

@end

@protocol ItemViewDelegate <NSObject>

-(void)didSelectedItemView:(ItemView *)itemView;

@end
