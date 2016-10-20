//
//  Animal.h
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property CGFloat weight;
@property CGFloat high;
@property NSString *name;
@property NSString *crySound;

- (id)cry:(Animal *)soundKind;

@end
