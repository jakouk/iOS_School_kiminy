//
//  Cat.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Cat.h"

@implementation Cat

-(id)cry:(Animal *)soundKind{
    NSLog(@"%@은 이렇게 웁니다. %@. 참고로 고양이 입니다.",self.name,soundKind.crySound);
    return nil;
}

@end
