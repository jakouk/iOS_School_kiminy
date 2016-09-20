//
//  band.h
//  objectSample
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 네이버밴드를 만드는 클래스
 * @discussion 네이버밴드를 만드는데 필요한 메서드나 프로퍼티가 뭐가 있을까
 * @author jakouk
 * version 0.1
 */
@interface Band : NSObject

///이름
@property id name;

///폰번호
@property id phone;

///네이버아이디
@property id naverId;

///페이스북아이디
@property id facebookId;

/**
 * 초대한 사람들의 숫자와 아이디를 부르는 메서드
 * @param personAmount 초대할 사람들의 숫자
 * @param identifier 초대할 아이디
 * @author jakouk
 * @version 0.1
 */
- (id)invite:(id)personAmount userId:(id)identifier;

/**
 * 투표할 내용과 끝날 시간을 정하는 메서드
 * @param object 투표할 주제
 * @param time 투표가 끝날 시간
 * @author jakouk
 * version 0.1
 */
- (id)vote:(id)object endTime:(id)time;

@end
