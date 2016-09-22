//
//  Persion.h
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

@interface Person : NSObject

///이름
@property NSString *name;

///나이
@property NSInteger age;

-(id)eat:(NSString *)food;

/**
 * 동물을 입양하는 메서드( 동물을 상속받는 객체는 모두 가능 )
 * @param animalName 키우는 동물이름
 * @author jakouk
 * @version 0.1
 */
-(id)adopt:(Animal *)animalName;


@end
