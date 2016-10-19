//
//  CalculationSubject.m
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "CalculationSubject.h"

@implementation CalculationSubject

//초기화를 해주어야 한다.
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.totlaScore = 0;
        self.subjectCount = 0;
    }
    return self;
}

//점수를 받아서 토탈변수에 더한다.
//더해진 점수마다 과목 카운트를 하나씩 올린다.
- (void)addScore:(NSInteger)score
{
    
    self.totlaScore = self.totlaScore + score;
    self.subjectCount = self.subjectCount + 1;
}

//평균을 구해서 반환 해준다.
- (CGFloat)average
{
    // 캐스팅을 해주어야 한다. 캐스팅이란 타입을 하는 것이다.
    CGFloat averageTemp = 0;
    if(self.subjectCount > 0){
        averageTemp = (CGFloat)self.totlaScore/(CGFloat)self.subjectCount;
    }
    
    return averageTemp;
}








@end
