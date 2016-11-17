//
//  RequestObject.m
//  NetworkingMiniProject
//
//  Created by jakouk on 2016. 11. 16..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "RequestObject.h"

@implementation RequestObject

+ (void)requestImageList {
    
    NSString *userId = [[UserInformation sharedUserInformation] userId];
    NSString *destinationURLString = [NSString stringWithFormat:@"http://iosschool.yagom.net:8080/api/list?user_id=%@",userId];
    
    NSURL *destinationURL = [NSURL URLWithString:destinationURLString];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]init];
    [request setHTTPMethod:@"GET"];
    [request setURL:destinationURL];
    
    id taskHandler =^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"request image list response : %@, error: %@",response,error);
        
        NSError *jsonParsingError;
        NSDictionary *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&jsonParsingError];
        NSLog(@"json parsing error : %@, json result : %@",jsonParsingError,jsonResult);
        
        NSArray *imageInfoList = jsonResult[@"list"];
        [[UserInformation sharedUserInformation] setImageInfoList:imageInfoList];
        NSString * notificationName = nil;
        
        if (imageInfoList == nil) {
            notificationName = ImageListUpdatefailNotification;
        } else {
            notificationName = ImageListUpdateNotification;
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil];
        });
    };
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:taskHandler
    ];
    [dataTask resume];
}

+ (void)requestUploadImage:(UIImage *)image title:(NSString *)title {
    
    NSString *userId = [[UserInformation sharedUserInformation] userId];
    NSString *destinationURLString = [NSString stringWithFormat:@"http://iosschool.yagom.net:8080/api/upload"];
    
    NSURL *destinationURL = [NSURL URLWithString:destinationURLString];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]init];
    [request setHTTPMethod:@"POST"];
    [request setURL:destinationURL];
    
    NSString *boundaryString = @"----------yagom";
    NSString *contentDescripttion = [NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundaryString];
    
    [request addValue:contentDescripttion forHTTPHeaderField:@"Content-Type"];
    
    //바디 데이터 생성
    NSData *boundaryData = [[NSString stringWithFormat:@"--%@\r\n",boundaryString] dataUsingEncoding:NSUTF8StringEncoding];
    
    //바디 데이터에 바운더리 추가
    NSMutableData *bodyData = [[NSMutableData alloc] init];
    
    //boundary
    [bodyData appendData:boundaryData];
    
    //boundary 1 userId
    NSData *nameData = [@"Content-Disposition: form-data; name=\"user_id\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    NSData *valueData = [[NSString stringWithFormat:@"%@\r\n",userId] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:valueData];
    
    //boundary
    [bodyData appendData:boundaryData];
    
    //boundary2 title
    nameData = [@"Content-Disposition: form-data; name=\"title\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    valueData = [[NSString stringWithFormat:@"%@\r\n",title] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:valueData];
    
    //boundary
    [bodyData appendData:boundaryData];
    
    //boundary3 image_data
    nameData = [@"Content-Disposition: form-data; name=\"image_data\"; filename=\"image.jpeg\"\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    NSData *imageContentTypeData =[@"Content-Type: image/jpeg\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:imageContentTypeData];
    
    NSData *imageData = UIImageJPEGRepresentation(image, 0.1);
    [bodyData appendData:imageData];
    
    NSData *finishBoundaryData = [[NSString stringWithFormat:@"\r\n--%@--\r\n",boundaryString] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:finishBoundaryData];
    
    [request setHTTPBody:bodyData];
    
    id uploadHandler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error != nil) {
            NSLog(@"Error occured : %@", error);
        }
        
        if (data == nil) {
            NSLog(@"Data dosent't exitst");
            return ;
        }
        
        NSLog(@"%@",response);
        
        NSDictionary *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
        NSLog(@"%@",jsonResult);
        
        if ([[jsonResult objectForKey:@"result"] isEqualToString:@"success"]) {
            [self requestImageList];
        }
    };
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionUploadTask *uploadTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:uploadHandler];
    
    [uploadTask resume];
}

@end
