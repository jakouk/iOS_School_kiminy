//
//  CalculationSubject.h
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    1. 학점 계산기 클래스 만들기( ClassCalculator )
    2. property만들기
    3. method 만들기
    - 과목 점수 더하는 함수
    - 평균 구하는 함수
 */

@interface CalculationSubject : NSObject

// var totalScore:NSInteger - Swift

@property NSInteger totlaScore;
@property NSInteger subjectCount;

- (void)addScore:(NSInteger)score;
- (CGFloat)average;










@end
