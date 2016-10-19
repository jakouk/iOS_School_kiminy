//
//  Facebook.h
//  objectSample
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Facebook : NSObject

@property id userName;
@property id userId;
@property id userPhone;

- (id)friendConnect:(id)userName firendId:(id)userId firendPhone:(id)userPhone;

@end
