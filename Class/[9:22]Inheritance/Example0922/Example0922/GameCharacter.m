//
//  gameCharacter.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "GameCharacter.h"

@interface GameCharacter ()

///체력
@property NSInteger health;

///마나
@property NSInteger mana;

///물리공격력
@property NSInteger physicalPower;

///마법공격력
@property NSInteger magicalPower;

///생존여부
@property BOOL isDead;

///이름
@property NSString *name;

///무기
@property NSString *weapon;

@end



@implementation GameCharacter

-(id)physicalAttackTo:(GameCharacter *)someone{
    
    NSLog(@"%@를 공격해라",someone.name);
    
    [someone damagedAs:self.physicalPower];
    
    return nil;
}


- (id)damagedAs:(NSInteger)damage{
    
    self.health = self.health - damage;
    
    return nil;
}

@end
