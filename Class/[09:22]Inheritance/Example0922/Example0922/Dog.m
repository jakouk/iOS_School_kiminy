//
//  Dog.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(id)cry:(Animal *)soundKind{
    [super cry:soundKind];
    NSLog(@"%@은 이렇게 웁니다. %@. 참고로 강아지 입니다.",self.name,soundKind.crySound);
    return nil;
}

@end
