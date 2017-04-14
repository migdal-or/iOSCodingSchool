//
//  AppDelegate.m
//  ex06
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdRootViewController.h"

@interface AppDelegate ()
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    FirstViewController *firstVC = [FirstViewController new];

    UINavigationController *secondVC = [UINavigationController new];
    SecondViewController *sec1VC = [SecondViewController new];
    secondVC.viewControllers = @[sec1VC];
    
    UINavigationController *thirdVC = [UINavigationController new];
    ThirdRootViewController *tri1VC = [ThirdRootViewController new];
    thirdVC.viewControllers = @[tri1VC];

//    NSArray *viewControllers = @[firstVC, secondVC, thirdVC];

    //3:
    UINavigationController *navigationController = [UINavigationController new];
    navigationController.viewControllers = @[firstVC];

    window.rootViewController = navigationController;
    
    //2:
//    SecondViewController *secondVC = [SecondViewController new];
//    
//    NSArray *viewControllers = @[firstVC, secondVC];
//    
//    UISplitViewController *splitViewController = [UISplitViewController new];
//    splitViewController.viewControllers = viewControllers;
//    window.rootViewController = splitViewController;
    
    
    //1:
//    UITabBarController *tabBarController = [UITabBarController new];
//    [tabBarController setViewControllers:viewControllers animated:YES];
//    
//    window.rootViewController = tabBarController;
    
    self.window = window;
    [window makeKeyAndVisible];
    
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
