//
//  AppDelegate.m
//  ColorME
//
//  Created by tuanvu on 8/21/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    // Override point for customization after application launch.

    DashboardController* dashboardController = [[DashboardController alloc] initWithNibName:@"DashboardController" bundle:nil];
    MessController* messController = [[MessController alloc] initWithNibName:@"MessController" bundle:nil];
    NotifyController* notifyController = [[NotifyController alloc] initWithNibName:@"NotifyController" bundle:nil];
    MainPageController* mainPageController = [[MainPageController alloc] initWithNibName:@"MainPageController" bundle:nil];
    ProfileController* profileController = [[ProfileController alloc] initWithNibName:@"ProfileController" bundle:nil];
    DDController* ddController = [[DDController alloc] initWithNibName:@"DDController" bundle:nil];
    THPController* thpController = [[THPController alloc] initWithNibName:@"THPController" bundle:nil];
    CTController* ctController = [[CTController alloc] initWithNibName:@"CTController" bundle:nil];

    _naviCT = [[UINavigationController alloc] initWithRootViewController:ctController];
    _naviDD = [[UINavigationController alloc] initWithRootViewController:ddController];
    _naviTHP = [[UINavigationController alloc] initWithRootViewController:thpController];

    _naviMess = [[UINavigationController alloc] initWithRootViewController:messController];
    _naviDashboard = [[UINavigationController alloc] initWithRootViewController:dashboardController];
    _naviProfile = [[UINavigationController alloc] initWithRootViewController:profileController];
    _naviMainPage = [[UINavigationController alloc] initWithRootViewController:mainPageController];
    _naviNotify = [[UINavigationController alloc] initWithRootViewController:notifyController];

    [self setupMainController];

    return YES;
}

- (void)setupMainController
{
    UIStoryboard* storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TabBarController* tabbarController = [storyBoard instantiateViewControllerWithIdentifier:@"TabBarController"];

    MenuController* menuController = [[MenuController alloc] initWithNibName:@"MenuController" bundle:nil];

    _mainViewController = [[MMDrawerController alloc] initWithCenterViewController:tabbarController leftDrawerViewController:menuController];

    [_mainViewController setMaximumLeftDrawerWidth:self.window.frame.size.width * 0.8f];
    [_mainViewController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [_mainViewController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];

    [self.window makeKeyAndVisible];
    [self.window setRootViewController:_mainViewController];
}

- (void)applicationWillResignActive:(UIApplication*)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication*)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication*)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication*)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication*)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
