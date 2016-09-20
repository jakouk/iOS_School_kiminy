//
//  main.m
//  objectSample
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "band.h"
#import "Slack.h"

int main(int argc, const char * argv[]) {
    
    Band *user1 = [[Band alloc]init];
    Band *user2 = [[Band alloc]init];
    
    user1.name = @"kiminy";
    user1.phone = @"010-2543-4534";
    user1.naverId = @"wansdsky";
    user1.facebookId = @"wansdsk";
    
    user2.name =@"karia";
    
    [user1 invite:@"5" userId:user2.name];
    [user1 vote:@"iOS" endTime:@"8"];
    
    Slack *user3 = [[Slack alloc]init];
    Slack *user4 = [[Slack alloc]init];
    
    user3.userEmail = @"wansdsky@naver.com";
    user3.userNickName = @"wansd";
    
    user4.userEmail = @"jakoriaty@naver.com";
    user4.userNickName = @"karia";
    
    [user3 inviteUser:user4.userEmail
         userNickName:user4.userNickName];
    
    [user4 inviteUser:user3.userEmail
         userNickName:user3.userNickName];
    
    
    return 0;
}
