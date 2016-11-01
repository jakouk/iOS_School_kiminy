//
//  MySingleton.h
//  Precomplied
//
//  Created by jakouk on 2016. 10. 31..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

+ (instancetype)sharedInstanceance;
- (void)justMethod;

@end
