//
//  Warrior.h
//  StructureSample
//
//  Created by jakouk on 2016. 9. 19..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
    Warrior클래스는 디아블로3와 디아블로2를 적절히 섞어서 만들었습니다.
 */

@interface Warrior : NSObject

//한손칼
@property id oneHandSword;

//두손칼 -> 사용시 무기는 한개만 장착이 가능
@property id twoHandSword;

//도끼
@property id ax;

//갑옷
@property id armor;

//지진( 쿨타임 60초, 데미지 힘 * 60 , 범위 200)
-(id)earthQuake;

//파워업( 쿨타임 30초, 힘 증가 300, 지속시간 300초 )
-(id)overPower;

//전쟁의 울음( 쿨타입 30초, 전체 스텟 증가 50, 지속시간 60초 )
-(id)warCry;

@end
