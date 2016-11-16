//
//  RequestObject.m
//  Networking
//
//  Created by jakouk on 2016. 11. 15..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "RequestObject.h"

@implementation RequestObject

+ (instancetype)sharedUserResqusetObject {
    static RequestObject * instance = nil;
    static dispatch_once_t token;
    
    dispatch_once(&token, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (void)requestImageList {
    
    self.list = [[NSDictionary alloc] init];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURL *url = [NSURL URLWithString:@"http://iosschool.yagom.net:8080/api/list/?user_id=200"];
    NSURLSessionDataTask *getDataTask = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
         if (data) {
             NSLog(@"response %@, error %@",response,error);
             NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
             self.list = dic;
        }
    }];
    [getDataTask resume];
}

- (void)requestUploadImage:(UIImage *)image title:(NSString *)title {
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURL *url = [NSURL URLWithString:@"http://iosschool.yagom.net:8080/api/upload/?user_id=102"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    
    NSString *boundary = @"YOUR_BOUNDARY_STRING";
    NSMutableData *body = [NSMutableData data];
    
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    
    
    
    request.HTTPBody = [boundary dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
    }];
    
    
    
}

@end
