//
//  UniversityStudent.h
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface UniversityStudent : Student

@property NSString *major;

-(id)goMTTO:(NSString *)location;

@end
