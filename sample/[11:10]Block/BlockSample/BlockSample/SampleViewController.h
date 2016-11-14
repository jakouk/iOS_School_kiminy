//
//  SampleViewController.h
//  BlockSample
//
//  Created by jakouk on 2016. 11. 10..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ingBlock)(NSInteger);

@interface SampleViewController : UIViewController

- (void)myMethod:(ingBlock)param;
- (void)playMethod:(NSInteger)num;

@end
