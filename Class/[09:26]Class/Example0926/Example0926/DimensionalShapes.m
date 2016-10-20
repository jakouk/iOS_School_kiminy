//
//  DimensionalShapes.m
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "DimensionalShapes.h"

@implementation DimensionalShapes

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.area = 0;
        self.perimeter = 0;
        self.volume = 0;
        self.circumference = 0;
    }
    return self;
}

//정사각형 넓이, 둘레
-(void)squarLength:(NSInteger)length
{
    self.area = (CGFloat)length * (CGFloat)length;
    self.perimeter = length*4;
    NSLog(@"정사각형 넓이 %lf, 정사각형 둘레 %ld",(CGFloat)length * (CGFloat)length, length*4);
    
}

//직사각형 넓이 , 둘레
-(void)rectangleHigh:(NSInteger)high bottom:(NSInteger)bottom
{
    self.area = high*bottom;
    self.perimeter = 2*high + 2*bottom;
}

//원 넓이
-(void)circleHalfDiameter:(NSInteger)halfDiameter
{
    self.area = (CGFloat)halfDiameter * (CGFloat)halfDiameter * 3.14;
    self.circumference = 2 * (CGFloat)halfDiameter * 3.14;
}

//삼각형 넓이
-(void)triangleHigh:(NSInteger)high bottom:(NSInteger)bottom
{
    self.area = (CGFloat)high * (CGFloat)bottom / 2.0;
}

//사다리꼴 넓이
-(void)TrapezoldHigh:(NSInteger)high topRange:(NSInteger)topRange bottomRange:(NSInteger)bottomRange
{
    self.area =  1.0 / 2.0 * (CGFloat)high * ( (CGFloat)topRange + (CGFloat)bottomRange );
}

//정육면체 부피
-(void)cubeLength:(NSInteger)length
{
    self.volume = length * length * length;
}

//직육면체 부피
-(void)rectangularSolidHigh:(NSInteger)high length:(NSInteger)length width:(NSInteger)width
{
    self.volume = high*length * width;
}

//원통 부피
-(void)circularCylinderHigh:(NSInteger)high halfDiameter:(NSInteger)halfDiameter
{
    self.volume = (CGFloat)high * (CGFloat)halfDiameter * (CGFloat)halfDiameter * 3.14;
}

//구 부피
-(void)sphereHalfDiameter:(NSInteger)halfDiameter
{
    self.volume = 4.0 / 3.0 * 3.14 * (CGFloat)halfDiameter * (CGFloat)halfDiameter * (CGFloat)halfDiameter;
}

//원뿔 부피
-(void)coneHigh:(NSInteger)high halfDiameter:(NSInteger)halfDiameter
{
    self.volume = 1.0 /3.0 * (CGFloat)high * (CGFloat)halfDiameter * (CGFloat)halfDiameter;
}


@end
