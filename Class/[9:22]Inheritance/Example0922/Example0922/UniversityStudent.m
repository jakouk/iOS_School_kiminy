//
//  UniversityStudent.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "UniversityStudent.h"

@implementation UniversityStudent

-(id)eat:(NSString *)food{
    NSLog(@"학식중에 %@만 먹었다.",food);
    return nil;
}

-(id)goMTTO:(NSString *)location{
    NSLog(@"MT를 갔다.");
    return nil;
}


-(id)adopt:(Animal *)animalName{
    NSLog(@"대학생 %@가 동물이름 %@를 입양을 실패했습니다. 기숙가에서 거절.",self.name,animalName.name);
    return nil;
}

@end
