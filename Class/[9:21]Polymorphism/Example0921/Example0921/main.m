//
//  main.m
//  Example0921
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {
    
    
    Warrior *black = [[Warrior alloc]init];
    black.health = 200;
    black.force = 30;
    black.mana = 15;
    black.intellgent = 10;
    black.physicalPower = 60;
    black.magicalPower = 30;
    black.speed = 20;
    black.isDead = NO;
    black.name = @"전사"; //[[NSString alloc] initWithUTF8String:"전사"];
    
    
    Wizard *white = [[Wizard alloc]init];
    white.health = 70;
    white.force = 10;
    white.mana = 150;
    white.intellgent = 30;
    white.physicalPower = 10;
    white.magicalPower = 75;
    white.speed = 10;
    white.isDead = NO;
    white.name = @"마법사";
    
    
    [black physicalAttackTo:white];
    [white magicalAttackTo:black];
    [white selfHeal];
    [black magicalAttackTo:white];
    [white magicalAttackTo:black];
    [black jumpTo:@"들판"];
    [white teleportTo:@"들판"];
    
    
    // 형식 지정자 - format specifier
    // 정수 타입 - 부호가 있는 32bit 정수타입 > 10진수 (%d) < C에서 만드는 것 int는 32bit >
    // 정수 타입 - 부호가 있는 64bit 정수타입 > 10진수 (%ld)
    NSLog(@"physical power : %ld",black.physicalPower);
    
    // 정수 타입 - 부호가 없는 32bit 정수타입 > 10진수 (%u)
    // 정수 타입 - 부호가 없는 64bit 정수타입 > 10진수 (%lu)
    // UNIT_MAX는 타입의 최대값인듯
    black.health = UINT_MAX +1;
    NSLog(@"health : %lu",black.health);
    
    CGFloat someFloatValue = 101.5;
    // 실수 타입 - 32bit 실수 타입 (%f)
    // 실수 타입 - 64bit 실수 타입 (%lf);
    NSLog(@"float value : %lf", someFloatValue);
    
    //블리언
    NSLog(@"Boolean value : %d", YES);
    NSLog(@"Boolean vlaue : %d", NO);
    
    //%를 표현하고 싶어요
    NSLog(@"공격력이 50%%가 증가하였습니다");
    
    //주소값을 보고 싶어요
    NSLog(@"jack object : %@, memory address : %p",black,black);
    
    //정수 타입 ( 16진수 )
    NSLog(@"physical Power( 16진수) : %lx",black.physicalPower);
    
    //정수 타입 ( 8진수 )
    NSLog(@"physical power ( 8진수 ) : %lo",black.physicalPower);
    
    //캐릭터 타입
    NSLog(@"character : %c %c %c",'a','b','c');
    
    //줄바꿈   \n
    NSLog(@"줄을 바꿔\n봅시다");
    
    // 탭을 표현하고 싶어요 \t
    NSLog(@"사이에 탭\t을 넣어봅니다");
    
    //응용
    NSLog(@"black의 체력은 %lu\t마력은 %lu이고, \n물리공격력은 %ld, 마법공격력은 %ld입니다.",black.health,black.mana, black.physicalPower,black.magicalPower);
    
    //응용2
    NSLog(@"white의 체력 %lu\n 마나 %lu\n 물리공격력 %ld\n 마법공격력 %ld\n",white.health,white.mana, white.physicalPower,white.magicalPower);
    
    // long => 64비트 부호가 있는 정수 타입
    // int => 32비트 부호가 있는 정수 타입
    //unsigned long => 부호가 없는 64비트 정수형
    //unsigned int => 부호가 없는 32비트 정수형
    
    // %-5ld
    // %-04ld
    // %+3ld
    // %5.2f 
    // %-10.3f 오른쪽 정렬 전체숫자 10자리 정수는 6자리 점 하나 실수 3자리
    // %10.0f 정수 10자리
    // %.3f 실수 3자리
    
    
    
    // 블리언 타입
    BOOL isYagomHandsome = YES;
    BOOL compareResult = NO;
    
    // 정수 타입
    // 부호가 있는 정수타입
    NSInteger signedInteger = -100;
    NSInteger twoHundred = 200;
    
    //부호가 없는 정수타입
    NSUInteger unsiginedInteger = -100;
    NSUInteger threeHundred = 300;
    
    compareResult = (twoHundred < threeHundred);
    
    NSInteger anotherNumber = twoHundred;
    anotherNumber = 1000;
    
    //객체형 숫자 타입
    NSNumber *someNumberObject = [[NSNumber alloc] initWithInt:100]; //@100
    NSNumber *anotherNumberVariable = someNumberObject;
    
    //실수형 숫자 타입
    CGFloat height = 200.3;
    CGFloat weight = 100.5;
    
    //한 글자 표현 문자 타입
    char someCharacter = 'a';
    
    id anyObject = @100;
    anyObject = [[NSObject alloc]init];
    
    
    
    return 0;
}
