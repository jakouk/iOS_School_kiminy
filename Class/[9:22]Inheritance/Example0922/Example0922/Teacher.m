//
//  Teacher.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (id)teach:(Student *)someone{
    NSLog(@"선생 %@가 학생 %@에게 %@과목을 가르칩니다.",self.name,someone.name,self.subject);
    return nil;
}

-(id)study:(NSString *)subject{
    NSLog(@"선생님들도 계속해서 바뀌는 것이 있기때문에 %@를 공부한다.",subject);
    return nil;
}

@end
