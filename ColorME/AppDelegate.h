//
//  AppDelegate.h
//  ColorME
//
//  Created by tuanvu on 8/21/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MMDrawerController/MMDrawerController.h>
#define APPDELEGATE ((AppDelegate*)[[UIApplication sharedApplication] delegate])

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MMDrawerController* mainViewController;
@property (strong, nonatomic) UINavigationController* naviDashboard;
@property (strong, nonatomic) UINavigationController* naviMess;
@property (strong, nonatomic) UINavigationController* naviProfile;
@property (strong, nonatomic) UINavigationController* naviNotify;
@property (strong, nonatomic) UINavigationController* naviMainPage;

@property (strong, nonatomic) UINavigationController* naviTHP;
@property (strong, nonatomic) UINavigationController* naviDD;
@property (strong, nonatomic) UINavigationController* naviCT;





@end

