//
//  Wizard.h
//  StructureSample
//
//  Created by jakouk on 2016. 9. 19..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    Wizard 클래스는 메이플스토리와 디아블로3를 적절히 섞어서 만들었습니다.
 */
@interface Wizard : NSObject

//스태프 ( 전체적인 int를 대폭 증가 시키지만 스태프 이외의 무기는 사용할수 없습니다. )
@property id staff;

//완드 ( int를 대폭증가시키지는 않지만 다른손에 방패도 들수 있습니다. )
@property id wind;

//블랙홀 ( 쿨타임 : 300초, 속성 : int * 300의 데이미를 줌,  지속시간 : 30초)
- (id)blackHole;

//아이스 아머 ( 쿨타임 : 60초, 지속시간 : 180초 , 속성 : 마나가 체력 대신에 깍입니다. )
- (id)iceArmor;

//힘의 파동  (쿨타임 :60초, 지속시간 : 60초 속성 : 주변 유닛들의 모든 스텟을 10씩 늘려준다 )
- (id)waveOfForce;


@end
