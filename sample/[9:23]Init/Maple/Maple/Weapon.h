//
//  Weapon.h
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Maple.h"

@interface Weapon : Maple

@property NSString *gameClassdelicate;

-(instancetype)initWithName:(NSString *)weaponName strWeapon:(NSInteger)str weaponPhysicalPower:(NSInteger)physicalPower;

@end
