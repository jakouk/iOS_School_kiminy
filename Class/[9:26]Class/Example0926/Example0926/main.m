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
#import "Toolbox.h"
#import "ifExample.h"

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
    
    //정사각형 길이 1
    [shape squarLength:1];
    NSLog(@"정사각형 넓이 %lf, 정사각형 둘레 %ld",shape.area, shape.perimeter);
    
    //직사각형 높이 1 밑변 1
    [shape rectangleHigh:1 bottom:2];
    NSLog(@"직사각형 넓이 %lf, 정사각형 둘레 %ld",shape.area, shape.perimeter);
    
    //원 반지름 1
    [shape circleHalfDiameter:1];
    NSLog(@"원 넓이 %lf, 원둘레 %lf",shape.area, shape.circumference);
    
    //삼각형 높이 1 밑변 2
    [shape triangleHigh:1 bottom:2];
    NSLog(@"삼각형 넓이 %lf",shape.area);
    
    //사다리꼴 높이 1, 위길이 2, 아래길이 3
    [shape TrapezoldHigh:1 topRange:2 bottomRange:3];
    NSLog(@"사다리꼴 넓이 %lf",shape.area);
    
    //정육면체 길이 1
    [shape cubeLength:1];
    NSLog(@"정육면체 부피 %lf",shape.volume);
    
    //직육면체 길이 1
    [shape rectangularSolidHigh:1 length:2 width:3];
    NSLog(@"직육면체 부피 %lf",shape.volume);
    
    //원통 높이 1 반지름 2
    [shape circularCylinderHigh:1 halfDiameter:2];
    NSLog(@"원통 부피 %lf",shape.volume);
    
    //구 반지름 1
    [shape sphereHalfDiameter:1];
    NSLog(@"구 부피 %lf",shape.volume);
    
    //원뿔 반지름 1
    [shape coneHigh:1 halfDiameter:2];
    NSLog(@"원뿔 부피 %lf",shape.volume);

    

    NSLog(@"화씨온도 %lf",[Toolbox fToC:5]);
    
    NSLog(@"섭씨온도 %lf",[Toolbox cToF:5]);
    
    NSLog(@"KB %lf",[Toolbox kbToMb:1024]);
    
    NSLog(@"MB %lf",[Toolbox mbToGb:1024]);
    
    NSLog(@"시간 변경 %ld",[Toolbox hourToSecond:11320]);
    
    NSLog(@"시간 변경 %ld",[Toolbox secondToHour:4400]);
    
    NSLog(@"성적은 %@",[ifExample gradeAlloc:101]);
    
    NSLog(@"point %lf",[ifExample gardeToPoint:@"A+"]);
    
    NSLog(@"소수점 3째 자리 %lf",[ifExample roundNum:(3.4552)]);
    
    [ifExample checkLeapYear:1396];
    
    
    
    
    
    
    return 0;
}
