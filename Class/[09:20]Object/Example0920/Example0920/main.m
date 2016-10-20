//
//  main.m
//  Example0920
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>   //애플에서 만든것은 <>를 사용한다.
#import "Person.h"
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {

    //사람 클래스 ( 나 )
    Person *me = [[Person alloc] init];
    me.name = @"kiminy";
    me.gender = @"male";
    me.mobile = @"010-1234-5677";
    
    //사람 클래스 ( 너 )
    Person *you = [[Person alloc] init];
    you.name = @"yagom";
    you.gender = @"female";
    you.mobile = @"010-1111-2222";
    
    //사람 클래스 ( 그 )
    Person *he = [[Person alloc] init];
    he.name = @"young";
    he.gender = @"male";
    he.mobile = @"010-1112-3043";
    
    //전사 클래스 ( 오크 -> 체력 500, 마나 100, 데미지 30, 마법 데미지 5 )
    Warrior *ork = [[Warrior alloc] init];
    ork.health = @"500";
    ork.mana = @"100";
    ork.physicalPower = @"30";
    ork.magicalPower = @"5";
    ork.weapon = @"도끼";
    
    //전사 클래스 ( 블랙 -> 체력 450, 마나 150, 데미지 32, 마법 데미지 3 )
    Warrior *black = [[Warrior alloc] init];
    black.health = @"450";
    black.mana = @"150";
    black.physicalPower = @"32";
    black.magicalPower = @"3";
    black.weapon = @"투핸드소드";
    
    //전사 클래스 ( 브라운 -> 체력 550, 마나 50, 데미지 34, 마법 데미지 1 )
    Warrior *brown = [[Warrior alloc] init];
    brown.health = @"550";
    brown.mana = @"50";
    brown.physicalPower = @"34";
    brown.magicalPower = @"1";
    brown.weapon = @"원핸드 소드";
    
    
    //마법사 클래스 ( 파이어 -> 체력 100, 마나 500, 데미지 10, 마법 데미지 25 )
    Wizard *fire = [[Wizard alloc] init];
    fire.health = @"100";
    fire.mana = @"500";
    fire.physicalPower = @"10";
    fire.magicalPower = @"25";
    fire.weapon = @"스테프";
    
    //마법사 클래스 ( 아이스 -> 체력 150, 마나 450, 데미지 15, 마법 데미지 20 )
    Wizard *ice = [[Wizard alloc] init];
    ice.health = @"150";
    ice.mana = @"450";
    ice.physicalPower = @"15";
    ice.magicalPower = @"20";
    ice.weapon = @"완드";
    
    //마법사 클래스 ( 썬더 -> 체력 50, 마나 550, 데미지 5, 마법 데미지 30 )
    Wizard *thunder = [[Wizard alloc] init];
    thunder.health = @"50";
    thunder.mana = @"550";
    thunder.physicalPower = @"5";
    thunder.magicalPower = @"30";
    thunder.weapon = @"스테프";
    
    NSLog(@"name : %@, gender : %@, mobile : %@",me.name,me.gender,me.mobile);
    NSLog(@"name : %@, gender : %@, mobile : %@",you.name,you.gender,you.mobile);
    NSLog(@"name : %@, gender : %@, mobile : %@",he.name,he.gender,he.mobile);
    
    NSLog(@"ork health : %@, mana :%@, physicalPower : %@, magicalPower : %@ weapon : %@",ork.health, ork.mana, ork.physicalPower, ork.magicalPower,ork.weapon);
    NSLog(@"black health : %@, mana : %@, physicalPower : %@, magicalPower : %@, weapon : %@", black.health, black.mana, black.physicalPower, black.magicalPower, black.weapon);
    NSLog(@"brown health: %@, mana : %@, physicalPower : %@, magicalPower : %@, weapon : %@", brown.health, brown.mana, brown.physicalPower, brown.magicalPower, brown.weapon);
    
    NSLog(@"fire health : %@, mana :%@, physicalPower : %@, magicalPower : %@, weapon : %@",fire.health, fire.mana, fire.physicalPower, fire.magicalPower, fire.weapon);
    NSLog(@"ice health : %@, mana :%@, physicalPower : %@, magicalPower : %@, weapon : %@",ice.health, ice.mana, ice.physicalPower,ice.magicalPower, ice.weapon);
    NSLog(@"thunder health : %@, mana :%@, physicalPower : %@, magicalPower : %@, weapon : %@",thunder.health,thunder.mana, thunder.physicalPower, thunder.magicalPower,thunder.weapon);
    
    ice.health = fire.health;
    ice.health = ork.health;
    black.health = ice.health;
    
    NSLog(@"black.health %@",black.health);
    
    //메서드 실행은 [ 변수이름 메서드이름 ]
    
    //객체변수 : me 사용한 메서드 : talk
    [me talk:@"블랙"];
    
    //객체변체 : you 사용한 메서드 : eat
    [you eat:@"과일"];
    
    //객체변수 : he 사용한 메서드 : run
    [he run:@"동쪽"];
    
    //객체변수 : ork 사용한 메서드 : 웨폰 마스터리
    [ork weaponPowerUp:@"3" time:@5 timeDamage:@10];
    
    //객체변수 : black 사용한 메서드 : 용의 축복
    [black dragonBless:@5 time:@10];
    
    //객체변수 : brown 사용한 메서드 : 용의 분노
    [brown dragonAnger:@5 time:@3 timeDamage:@10];
    
    //객체변수 : fire 사용한 메서드 : 플레임
    [fire flame:@5 time:@5 timeDamage:@10];
    
    //객체변수 : ice 사용한 메서드 : 블리자드
    [ice blizard:@5 time:@10 timeDamage:@3 slowTime:@5];
    
    //객체변수 : thunder 사용한 메서드 : 썬더볼트
    [thunder thunderVolt:@2 time:@2 timeDamage:@5];
    
    
    [me talkTo:@"karia" topic:@"iOS" language:@"영어"];
    [me runTo:@"인천" bySpeed:@"20" with:@"가족"];
    
    
    Wizard *jeina = [[Wizard alloc]init];
    Warrior *garoshi = [[Warrior alloc]init];
    
    [jeina windstorm:@"가로쉬" damage:@200 holdDamage:@100];
    [garoshi physicalAttack:@"제이나" holdDamage:@100 Damage:@50];
    [jeina heal:@"자기자신" amount:@100 holdAmount:@100];
    [garoshi jump:@"4,5" long:@20];
    
    return 0;
}
