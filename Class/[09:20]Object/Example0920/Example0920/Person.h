//
//  Person.h
//  Example0920
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * @desc 사람을 나타내는 클래스입니다.
 * @version 0.1
 * @author jakouk
 * @discussion 사람에 대한 클래스가 가지는 속성이나 메서드가 무엇이 있을까?
 *
 */

@interface Person : NSObject

///이름
@property id name;

///성별
@property id gender;

///전화번호
@property id mobile;

/**
 * someone과 말을 하고 topic에 대한 주제를 가지고 language의 언어로 대화합니다.
 * @param someone 말을할 대상
 * @param topic 말을할 주제
 * @param language 말을할 언어
 * @return 반환은 나중에 배웁니다.
 * @author kiminy
 * @version 0.1
 */
- (id)talkTo : (id)someone topic:(id)topic language : (id)language;

/**
 *  location으로 speed의 속력으로 someone과 달립니다.
 * @param location 달리고자 하는 지역
 * @param speed 달리려고 하는 속도
 * @param someone 함께 달리고자 하는 대상
 * @return 반환은 나중에 배웁니다.
 * @author jakouk
 * @version 0.1
 */
- (id)runTo : (id)location bySpeed:(id)speed with:(id)someone;

/**
 * who와 말을 합니다.
 * @param who 말하고자 하는 대상
 * @return 반환은 나중에 배웁니다.
 * @author jakouk
 * @version 0.1
 */
- (id)talk:(id)who;

/**
 * food를 먹습니다.
 * @param food 먹고자 하는 음식
 * @return 반환은 나중에 배웁니다.
 * @author jakouk
 * @version 0.1
 */
- (id)eat:(id)food;

/**
 * vector로 이동합니다.
 * @param vector 이동하고자 하는 방향
 * @return 반환은 나중에 배웁니다.
 * @author jakouk
 * @version 0.1
 */

- (id)run:(id)vector;

@end
