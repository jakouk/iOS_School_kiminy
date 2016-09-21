//
//  Warrior.m
//  Example0921
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior

-(id)physicalAttackTo:(Wizard *)someCharacter{
    //전사의 물리 공격력 만큼 마법사의 체력을 감소시킵니다.

    //마법사의 이전 체력
    NSUInteger originHealth = someCharacter.health;
    
    // 공격!!!
    someCharacter.health = originHealth - self.physicalPower;
    
    //물리공격력 self.physicalPower
    
    //마법사의 이후 체력 someCharacter.health;
    
    //전사가 마법사에게 물리공격을 가하여
    //XX만큼의 데미지를 입혔습니다.
    //마법사의 체력이 XX에서 XX으로 변경되었습니다.
    
    NSLog(@"전사가 마법사에게 물리공격을 가하여 %ld만큼의 데미지를 입혔습니다. 마법사의 체력이 %lu에서 %lu로 변경되었습니다.",self.physicalPower,originHealth,someCharacter.health);
    
    return nil;
}

-(id)magicalAttackTo:(Wizard *)someCharacter{
    //전사의 마법 공격력 만큼 마법사의 체력이 감소합니다.
    
    //마법사의 이전 체력
    NSUInteger originHealth = someCharacter.health;
    //공격!!!
    
    someCharacter.health = originHealth - self.magicalPower;
    
    //마법공격력 self.magicalPower;
    
    //마법사의 이후 체력 someCharater.health
    
    //전사가 마법사에게 마법공격을 가하여
    //XX만큼의 데이지를 입혔습니다.
    //마법사의 체력이 XX에서 XX으로 변경되었습니다.
    
    NSLog(@"전사가 마법사에게 마법공격을 가하여 %ld만큼의 데이지를 입혔습니다. 마법사의 체력이 %lu에서 %lu으로 변경되었습니다.",self.magicalPower,originHealth,someCharacter.health);
    
    return nil;
}

-(id)jumpTo:(NSString *)someWhere{
    NSLog(@"전사가 %@(으)로 이동하였습니다.",someWhere);
    return nil;
}

@end
