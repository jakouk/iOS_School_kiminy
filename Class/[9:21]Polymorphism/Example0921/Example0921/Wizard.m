//
//  Wizard.m
//  Example0921
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"

@implementation Wizard

- (id)physicalAttackTo:(Warrior *)someCharacter{
    
    //전사 원래 체력
    NSUInteger originHealth = someCharacter.health;
    
    //마법사 물리 공격력 self.physicalPower
    
    //전사 이후 체력
    someCharacter.health = originHealth - self.physicalPower;
    
    
    //마법사가 전사에게 물리공격을 가하여
    //XX만큼의 데이지를 입혔습니다.
    //전사의 체력이 XX에서 XX으로 변경되었습니다.
    
    NSLog(@"마법사가 전사에게 물리공격을 가하여 %ld만큼의 데미지를 입혔습니다. 전사의 체력이 %lu에서 %lu(으)로 변경되었습니다.",self.physicalPower,originHealth,someCharacter.health);
    
    return nil;
}

- (id)magicalAttackTo:(Warrior *)someCharacter{
    
    //전사 원래 체력
    NSUInteger originHealth = someCharacter.health;
    
    //마법사의 마법 공격력 self.magicalPower
    
    //전사 이후 체력
    someCharacter.health = originHealth - self.magicalPower;
    
    //마법사의 원래 마나
    NSUInteger originMana = self.mana;
    
    //마법사의 이후 마나
    self.mana = originMana - 50;
    
    //마법사가 전사에게 물리공격을 가하여
    //XX만큼의 데미지를 입혔습니다.
    //전사의 체력이 XX에서 XX으로 변경되었습니다.
    
    NSLog(@"마법사가 전사에게 마법공격을 가하여 %ld만큼의 데미지를 입혔습니다. 전사의 체력이 %lu에서 %lu(으)로 변경되었습니다.\n마법사의 마나는 %lu에서 %lu로 변경되었습니다.",self.magicalPower,originHealth,someCharacter.health,originMana,self.mana);
    
    return nil;
}

- (id)teleportTo:(NSString *)someWhere{
    
    NSLog(@"%@(으)로 이동하였습니다",someWhere);
    
    return nil;
}

- (id)selfHeal{
    //마법사의 원래체력
    NSUInteger originHealth = self.health;
    
    //마법사의 회복한 체력
    self.health = self.health + 50;
    
    //마법사의 원래 마나
    NSUInteger originMana = self.mana;
    
    //마법사의 이후 마나
    self.mana = originMana - 15;
    
    NSLog(@"마법사의 체력이 %lu에서 %lu로 회복되었습니다.\n마법사의 마나는 %lu에서 %lu로 변경되었습니다.",originHealth,self.health,originMana,self.mana);
    return nil;
}

@end
