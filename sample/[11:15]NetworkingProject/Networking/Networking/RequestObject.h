//
//  RequestObject.h
//  Networking
//
//  Created by jakouk on 2016. 11. 15..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RequestObject : NSObject

@property NSDictionary *list;
+ (instancetype)sharedUserResqusetObject;
- (void)requestImageList;
- (void)requestUploadImage:(UIImage *)image title:(NSString *)title;

@end
