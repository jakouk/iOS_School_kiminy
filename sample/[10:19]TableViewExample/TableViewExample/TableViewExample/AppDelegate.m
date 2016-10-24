//
//  AppDelegate.m
//  TableViewExample
//
//  Created by jakouk on 2016. 10. 19..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

//화면의 시작점을 바꿔 줄수 있다. 
- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIStoryboard *firstStoryboard = nil;
    UIViewController *rootViewController = nil;
    
    BOOL isUserLogined = YES;
    
    if (isUserLogined) {
        firstStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    } else {
        firstStoryboard = [UIStoryboard storyboardWithName:@"LoginStoryBoard" bundle:nil];
    }
    
    rootViewController = [firstStoryboard instantiateInitialViewController];
    
//    rootViewController = [[UIViewController alloc] init];
//    rootViewController.view.backgroundColor = [UIColor lightGrayColor];
    
    //윈도우를 할당하고 크기를 디바이스 크기로 설정한다는 읜미이다. 
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //윈도우에 rootVIewController를 세팅한다는 것이다.
    [self.window setRootViewController:rootViewController];
    
    //이 윈도우를 키 윈도우로 만들어 준다는 의미이다. 이 앱의 윈도우로 설정한다는 의미이다.
    [self.window makeKeyAndVisible];
    
    NSLog(@"application:willFinishLaunchingWithOptions");
    
    //프로젝트에 전역적으로 설정할때 apperance -> 
    [[UILabel appearance] setBackgroundColor:[UIColor yellowColor]];
    
    
    
    return YES;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"application:willFinishLaunchingWithOptions");
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    NSLog(@"applicationWillResignActive");
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    NSLog(@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    NSLog(@"applicationWillEnterForeground");
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"applicationDidBecomeActive");
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"applicationWillTerminate");
}


@end
