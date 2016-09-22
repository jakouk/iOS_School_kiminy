//
//  Chicken.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Chicken.h"

@implementation Chicken

-(id)cry:(Animal *)soundKind{
    NSLog(@"%@은 이렇게 웁니다. 꼬끼오",self.name,soundKind.crySound);
    return nil;
}

@end
