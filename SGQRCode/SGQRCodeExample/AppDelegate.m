//
//  AppDelegate.m
//  SGQRCodeExample
//
//  Created by kingsic on 17/3/21.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end
int pp_code = 1;
NSString *pp_name;
NSString *pp_number;
NSString *pp_college;
NSString *pp_leader1;
NSString *pp_leader2;
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 加载姓名、学号、学院 、辅导员、分管领导
//    NSString *string = [[NSBundle mainBundle] pathForResource:@"pp_list" ofType:@"plist"];
//    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:string];
//    pp_name = [dic objectForKey:@"pp_name"];
//    pp_number = [dic objectForKey:@"pp_number"];
//    pp_college = [dic objectForKey:@"pp_college"];
//    pp_leader1 = [dic objectForKey:@"pp_leader1"];
//    pp_leader2 = [dic objectForKey:@"pp_leader2"];
    
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *filePath = [path stringByAppendingPathComponent:@"array.plist"];
        NSLog(@"%@",filePath);
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    pp_name = [dic objectForKey:@"pp_name"];
    pp_number = [dic objectForKey:@"pp_number"];
    pp_college = [dic objectForKey:@"pp_college"];
    pp_leader1 = [dic objectForKey:@"pp_leader1"];
    pp_leader2 = [dic objectForKey:@"pp_leader2"];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
