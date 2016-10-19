//
//  Facebook.m
//  objectSample
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Facebook.h"

@implementation Facebook

-(id)friendConnect:(id)userName firendId:(id)userId firendPhone:(id)userPhone{
    NSLog(@"친구의 이름은 %@이고, 아이디는 %@이고 전화번호는 %@ 입니다 맞습니까?",userName,userId, userPhone);
    return nil;
}

@end
