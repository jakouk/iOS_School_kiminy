//
//  Class.m
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "GameClass.h"

@implementation GameClass

-(id)takeWeapon:(Weapon *)weapon{
    
    NSInteger originStr = self.str;
    NSInteger originPhysicalPower = self.physicalPower;
    
    self.str = self.str + weapon.str;
    self.physicalPower = self.str*2 +weapon.physicalPower;
    self.weapon = weapon;
    
    NSLog(@"%@ 캐릭터의 힘이 %ld 에서 %ld로 증가하였고 데미지가 %ld에서 %ld로 증가하였습니다.",self.name,originStr,self.str,originPhysicalPower,self.physicalPower);
    
    return nil;
}

-(id)removeWeapon{
    
    NSInteger originStr = self.str;
    NSInteger originPhysicalPower = self.physicalPower;
    
    self.str = self.str - self.weapon.str;
    self.physicalPower = self.str*2;
    self.weapon = nil;
    
    NSLog(@"%@ 캐릭터의 힘이 %ld 에서 %ld로 감소하였고 데미지가 %ld에서 %ld로 감소하였습니다.",self.name,originStr,self.str,originPhysicalPower,self.physicalPower);
    
    
    return nil;
}

-(id)physicalAttack:(Monster *)monsterName{
    
    NSInteger originHealth = monsterName.health;
    monsterName.health = monsterName.health - self.physicalPower;
    
    NSLog(@"%@ 캐릭터가 %@ 을(를) 공격하여 몬스터 체력이 %ld에서 %ld으로 변경되었습니다.",self.name,monsterName.name,originHealth,monsterName.health);
    
    return nil;
}


@end
