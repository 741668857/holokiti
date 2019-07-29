//
//  AppDelegate.m
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建一个UIwindow对象
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //创建一个视图控制器作为UIwindow的跟视图控制器
    self.window.rootViewController=[[UIViewController alloc]init];
    self.window.backgroundColor=[UIColor blueColor];
    //使window有效并显示在屏幕上
    [self.window makeKeyAndVisible];
    
    
    UIView* view=[[UIView alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    view.backgroundColor=[UIColor greenColor];
    
    
    UIView* backview=[[UIView alloc]initWithFrame:CGRectMake(100, 80, 30, 30)];
    backview.backgroundColor=[UIColor whiteColor];
    
    [backview addSubview:view];
    [self.window addSubview:backview];
    
    backview.window;
    view.window;
    self.window;
    
    NSLog(@"%@",view.window);
    NSLog(@"%@",backview.window);
    NSLog(@"%@",self.window);
    
    // Override point for customization after application launch.
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
