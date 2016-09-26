//
//  Class.h
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Maple.h"
#import "Weapon.h"
@class Monster;

@interface GameClass : Maple

@property NSInteger level;
@property Weapon *weapon;

-(id)takeWeapon:(Weapon *)weapon;
-(id)removeWeapon;
-(id)physicalAttack:(Monster *)monsterName;

@end
