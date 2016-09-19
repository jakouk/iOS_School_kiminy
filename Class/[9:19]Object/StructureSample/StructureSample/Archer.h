//
//  shaman.h
//  StructureSample
//
//  Created by jakouk on 2016. 9. 19..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

//아처 클래스
@interface Archer : NSObject

//화살
@property id bow;

//석궁
@property id crossBow;

//멀티샷 ( 쿨타임 : 5초 , 지속시간 : 1초, 속성 : 화살이 스킬 선택 개수만큼 나감 )
-(id)multiShot;

//투샷 ( 쿨타임 2초, 지속시간 : 1초, 속성 : 2개의 화살 공격 )
-(id)twoShot;

@end
