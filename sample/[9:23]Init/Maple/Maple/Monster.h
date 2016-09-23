//
//  Monster.h
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Maple.h"
#import "GameClass.h"

@interface Monster : Maple


-(id)initWithName:(NSString *)monsterName;
-(id)physicalAttack:(GameClass *)gameClass;

@end
