//
//  Slack.h
//  objectSample
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 슬렉을 만드는 클래스
 * @discussion 슬랙을 만드는데 필요한 프러퍼티나 메서드는 무엇이 있을까
 * @author jakouk
 * @version 0.0
 */

@interface Slack : NSObject

///유저 이메일
@property id userEmail;

///유저 닉네임
@property id userNickName;

/**
 * 채널로 초대하는 메서드
 * @param userEmail 채널로 초대하고자 하는 유저 이메일
 * @param nickName 채널로 초대하고자 하는 유저 닉네임
 */

-(id)inviteUser:(id)userEmail userNickName:(id)nickName;

@end
