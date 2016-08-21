//
//  TabBarController.m
//  ColorME
//
//  Created by tuanvu on 8/21/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupTabbar];
    // Do any additional setup after loading the view from its nib.
}

- (void)setupTabbar
{



    NSMutableArray* viewControllers = [NSMutableArray arrayWithArray:@[[APPDELEGATE naviDashboard] , [APPDELEGATE naviNotify], [APPDELEGATE naviMainPage], [APPDELEGATE naviMess], [APPDELEGATE naviProfile] ]];
    
    [APPDELEGATE naviDashboard].tabBarItem =
    [[UITabBarItem alloc] initWithTitle:@"DashBoard"
                                  image:[UIImage imageWithColor:[UIColor redColor]]
                                    tag:1];
    [APPDELEGATE naviNotify].tabBarItem =
    [[UITabBarItem alloc] initWithTitle:@"Notify"
                                  image:[UIImage imageWithColor:[UIColor redColor]]
                                    tag:2];
    [APPDELEGATE naviMainPage].tabBarItem =
    [[UITabBarItem alloc] initWithTitle:@"Main"
                                  image:[UIImage imageWithColor:[UIColor redColor]]
                                    tag:3];
    [APPDELEGATE naviMess].tabBarItem =
    [[UITabBarItem alloc] initWithTitle:@"Messenge"
                                  image:[UIImage imageWithColor:[UIColor redColor]]
                                    tag:4];
    [APPDELEGATE naviProfile].tabBarItem =
    [[UITabBarItem alloc] initWithTitle:@"Profile"
                                  image:[UIImage imageWithColor:[UIColor redColor]]
                                    tag:5];

    [self setViewControllers:viewControllers];
    [self setSelectedIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
