//
//  Persion.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)eat:(NSString *)food{
    NSLog(@"집에서 %@을(를) 먹었다.",food);
    return nil;
}

-(id)adopt:(Animal *)animalName{
    NSLog(@"%@가 동물이름 %@를 입양했습니다.",self.name,animalName.name);
    return nil;
}

@end
