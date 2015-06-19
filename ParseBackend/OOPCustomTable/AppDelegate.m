//
//  AppDelegate.m
//  OOPCustomTable
//
//  Created by KaL on 6/2/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "AppDelegate.h"
#import "TableViewController.h"
#import "AboutVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // set the current window to tehe bounds of the screen
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // the view controllers
    TableViewController *myTVC = [[TableViewController alloc] initWithStyle:UITableViewStylePlain];
    AboutVC *aboutVC = [[AboutVC alloc] init];
    
    // init the nav controllers with the view controllers
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:myTVC];
    UINavigationController *navC2 = [[UINavigationController alloc] initWithRootViewController:aboutVC];
    
    // set the tab bar items
    navC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
    navC2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:1];
    
    // create tab bar controller
    UITabBarController *tabBarC = [[UITabBarController alloc] init];
    tabBarC.viewControllers = @[navC,navC2];
    self.window.rootViewController = tabBarC;
    
    // make the receiver the key window and make it visible
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
