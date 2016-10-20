//
//  Bird.h
//  PolymorphismSample
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 새 클래스
 * @discussion 새클래스에 필요한 프로퍼티와 메서드는 무엇이 있을까
 * @author jakouk
 * @version 0.1
 */
@interface Bird : NSObject

/**
 * 새소리를 내는 메서드
 * @param birdName 새이름
 * @param sound 새의 소리
 * @author jakouk
 * @version 0.1
 */
- (id)cry:(NSString *)birdName birdSound:(NSString *)sound;
@end
