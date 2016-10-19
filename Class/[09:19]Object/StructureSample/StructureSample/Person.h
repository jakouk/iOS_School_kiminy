//
//  Person.h
//  StructureSample
//
//  Created by jakouk on 2016. 9. 19..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
  사람 클래스 입니다.
 */
@interface Person : NSObject

//이름
@property id name;

//나이
@property id age;

//성별
@property id gender;

//폰번호
@property id phone;

//주소
@property id address;

//몸무게
@property id weight;

//혈액형
@property id blood;


//단순 메소드 이름
- (id)methodName;

//말하기 메소드
- (id)speak;

//걷기 메소드
- (id)walk;

//달리기 메소드
- (id)run;

//먹는 메소드
- (id)eat;

//마시는 메소드
- (id)drink;

//자는 메소드
- (id)sleep;

//보는 메소드
- (id)see;

//쓰는 메소드
- (id)write;


@end
