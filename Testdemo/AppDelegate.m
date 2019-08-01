//
//  AppDelegate.m
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRoot.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSix.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
  
    VCRoot* root01=[[VCRoot alloc]init];
    VCSecond* root02=[[VCSecond alloc]init];
    VCThird* root03=[[VCThird alloc]init];
    VCFour* root04=[[VCFour alloc]init];
    VCFive* root05=[[VCFive alloc ]init];
    VCSix* root06=[[VCSix alloc]init];
    
    root01.title=@"弟弟";
    root02.title=@"崽种";
    root03.title=@"03";
    root04.title=@"04";
    root05.title=@"05";
    root06.title=@"06";
    
    root04.view.backgroundColor=[UIColor blackColor];
    root05.view.backgroundColor=[UIColor grayColor];
    root06.view.backgroundColor=[UIColor whiteColor];
    
    
    
    root02.view.backgroundColor=[UIColor orangeColor];
    
    UITabBarController* tbcon=[[UITabBarController alloc]init];
    NSArray* ary=[NSArray arrayWithObjects:root01,root02,root03, root04,root05,root06,nil];
    tbcon.viewControllers=ary;
    tbcon.tabBar.translucent=NO;
    tbcon.selectedIndex=2;
    tbcon.tabBar.TintColor=[UIColor blueColor];
    
    self.window.rootViewController=tbcon;

    tbcon.delegate=self;
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers{
    NSLog(@"开始编辑");
}

- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    NSLog(@"即将结束编辑");
}

- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    if(changed=YES){
        NSLog(@"改变它lei了！！");
    }
    NSLog(@"viewcontroller:%@",viewControllers);
    NSLog(@"已经结束编辑");
}

- (void)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    NSLog(@"选中控制器对象");
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
