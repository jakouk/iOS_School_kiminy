//
//  main.m
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculationSubject.h"
#import "DimensionalShapes.h"

int main(int argc, const char * argv[]) {
    
    CalculationSubject *cal = [[CalculationSubject alloc]init];
    
    CGFloat averScore = 0;
    [cal addScore:70];
    [cal addScore:80];
    [cal addScore:90];
    [cal addScore:60];
    [cal addScore:80];
    [cal addScore:60];
    [cal addScore:70];
    averScore =  [cal average];
    
    NSLog(@"평균 점수 %lf 과목개수는 %ld",averScore,cal.subjectCount);
     
    DimensionalShapes *shape = [[DimensionalShapes alloc] init];
    
    
    [shape squarLength:1];
    NSLog(@"정사각형 넓이 %lf, 정사각형 둘레 %ld",shape.area, shape.perimeter);
    
    [shape rectangleHigh:1 bottom:2];
    NSLog(@"직사각형 넓이 %lf, 정사각형 둘레 %ld",shape.area, shape.perimeter);
    
    [shape circleHalfDiameter:1];
    NSLog(@"원 넓이 %lf, 원둘레 %lf",shape.area, shape.circumference);
    
    [shape triangleHigh:1 bottom:2];
    NSLog(@"삼각형 넓이 %lf",shape.area);
    
    [shape TrapezoldHigh:1 topRange:2 bottomRange:3];
    NSLog(@"사다리꼴 넓이 %lf",shape.area);
    
    [shape cubeLength:1];
    NSLog(@"정육면체 부피 %lf",shape.volume);
    
    [shape rectangularSolidHigh:1 length:2 width:3];
    NSLog(@"직육면체 부피 %lf",shape.volume);
    
    [shape circleHalfDiameter:1];
    NSLog(@"원통 부피 %lf",shape.volume);
    
    [shape sphereHalfDiameter:1];
    NSLog(@"구 부피 %lf",shape.volume);
    
    [shape coneHigh:1 halfDiameter:2];
    NSLog(@"원뿔 부피 %lf",shape.volume);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
