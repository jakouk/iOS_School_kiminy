//
//  SampleViewController.h
//  BlockSample
//
//  Created by jakouk on 2016. 11. 10..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^playBlock)(NSInteger);

@interface SampleViewController : UIViewController

- (void)myMethod:(playBlock)myNum;
- (void)plsyMethod:(NSInteger)num;

@end
