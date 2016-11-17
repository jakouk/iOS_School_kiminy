//
//  RequestObject.h
//  NetworkingMiniProject
//
//  Created by jakouk on 2016. 11. 16..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RequestObject : NSObject

+ (void)requestImageList;
+ (void)requestUploadImage:(UIImage *)image title:(NSString *)title;

@end
