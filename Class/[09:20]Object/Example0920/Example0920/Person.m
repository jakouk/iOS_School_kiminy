//
//  Person.m
//  Example0920
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Person.h"

@implementation Person

//메서드 구현
- (id)talkTo : (id)someone topic:(id)topic language : (id)language{
    NSLog(@"%@와(과) %@에 대해서 %@로 말을 했다.",someone,topic, language);
    return nil;
}

- (id)runTo : (id)location bySpeed:(id)speed with:(id)someone{
    NSLog(@"%@방향으로 %@km 속력으로 %@와(과) 갔다.",location, speed, someone);
    return nil;
}



- (id)talk:(id)who{
    NSLog(@"%@와(과) 말을 합니다",who);
    return nil;
}

- (id)eat:(id)food{
    NSLog(@"%@을(를) 먹습니다",food);
    return nil;
}

- (id)run:(id)vector{
    NSLog(@"%@(으)로 뜁니다",vector);
    return nil;
}

@end
