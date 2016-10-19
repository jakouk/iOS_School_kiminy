//
//  band.m
//  objectSample
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Band.h"

@implementation Band
-(id)invite:(id)personAmount userId:(id)identifier{
    NSLog(@"초대할 사람은 %@명이고 초대할 아이디는 %@입니다. ",personAmount,identifier);
    return nil;
}
-(id) vote:(id)object endTime:(id)time{
    NSLog(@"투표할 주제는 %@이고 투표가 끝날 시간은 %@ 입니다. ",object, time);
    return nil;
}
@end
