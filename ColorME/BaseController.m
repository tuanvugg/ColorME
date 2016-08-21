//
//  BaseController.m
//  ColorME
//
//  Created by tuanvu on 8/21/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "BaseController.h"
#import "UIImage+ImageWithColor.h"

@interface BaseController ()

@end

@implementation BaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self setupNavigationbarTitle];
    [self setupLeftMenuButton];
    [self setNavigationbarBackground];
    [self setupNavigationbarTitle];

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
}

- (void)setNavigationbarBackground
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:kAppColor]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage imageWithColor:kAppColor];
    self.navigationController.navigationBar.translucent = NO;
}

- (void)setupLeftMenuButton
{
    FAKFontAwesome* bars = [FAKFontAwesome barsIconWithSize:20];
    UIImage* barImg = [bars imageWithSize:CGSizeMake(20, 20)];
    UIBarButtonItem* leftDrawerButton = [[UIBarButtonItem alloc] initWithImage:barImg style:UIBarButtonItemStylePlain target:self action:@selector(leftDrawerButtonPress)];
    leftDrawerButton.tintColor = [UIColor whiteColor];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
}

- (void)leftDrawerButtonPress
{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    
}
- (void)setupNavigationbarTitle
{
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    
//    [self.navigationController.navigationBar setTitleTextAttributes:
//     @{ NSForegroundColorAttributeName : [UIColor whiteColor],
//        NSFontAttributeName : [UIFont fontWithName:kMenuFont size:18] }];
}

- (void)didReceiveMemoryWarning {
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
