//
//  DimensionalShapes.h
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DimensionalShapes : NSObject

///넓이
@property CGFloat area;

///둘레
@property NSInteger perimeter;

///원둘레
@property CGFloat circumference;

///부피
@property CGFloat volume;



//정사각형 넓이, 둘레
-(void)squarLength:(NSInteger)length;

//직사각형 넓이 , 둘레
-(void)rectangleHigh:(NSInteger)high bottom:(NSInteger)bottom;
//원 넓이
-(void)circleHalfDiameter:(NSInteger)halfDiameter;

//삼각형 넓이
-(void)triangleHigh:(NSInteger)high bottom:(NSInteger)bottom;

//사다리꼴 넓이
-(void)TrapezoldHigh:(NSInteger)high topRange:(NSInteger)topRange bottomRange:(NSInteger)bottomRange;

//정육면체 부피
-(void)cubeLength:(NSInteger)length;

//직육면체 부피
-(void)rectangularSolidHigh:(NSInteger)high length:(NSInteger)length width:(NSInteger)width;

//원통 부피
-(void)circularCylinderHigh:(NSInteger)high halfDiameter:(NSInteger)halfDiameter;
//구 부피
-(void)sphereHalfDiameter:(NSInteger)halfDiameter;

//원뿔 부피
-(void)coneHigh:(NSInteger)high halfDiameter:(NSInteger)halfDiameter;
@end
