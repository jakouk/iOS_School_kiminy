//
//  Student.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)eat:(NSString *)food{
    NSLog(@"급식중 %@을(를) 많이 먹었다.",food);
    return nil;
}

-(id)study{
    NSLog(@"공부를 했다");
    return nil;
}


-(id)adopt:(Animal *)animalName{
    NSLog(@"학생 %@가 동물이름 %@를 입양을 실패했습니다. 아버지의 반대로",self.name,animalName.name);
    return nil;
}

@end
