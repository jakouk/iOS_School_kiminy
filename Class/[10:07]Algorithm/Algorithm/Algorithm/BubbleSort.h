//
//  BubbleSort.h
//  Algorithm
//
//  Created by jakouk on 2016. 10. 7..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BubbleSort : NSObject

@property NSInteger totalSwitchCount;
@property NSInteger totalCompareCount;

-(NSArray *)bubbleSort:(NSArray *)list;

@end
