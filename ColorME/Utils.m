//
//  Utils.m
//  ARCleanHome
//
//  Created by tuanvu on 8/11/16.
//  Copyright © 4016 tuanvu. All rights reserved.
//

#import "Utils.h"

@implementation Utils


+ (UIImage*)creditCardImage
{
    FAKFontAwesome* icon = [FAKFontAwesome creditCardIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
    
}
+ (UIImage*)infoImage;
{
    FAKFontAwesome* infoIcon = [FAKFontAwesome infoIconWithSize:40.0f];
    UIImage* infoImage = [[infoIcon imageWithSize:CGSizeMake(40.0f, 40.0f)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

    return infoImage;
}

+ (UIImage*)phoneImage;
{
    FAKFoundationIcons* phoneIcon = [FAKFoundationIcons telephoneIconWithSize:40];
    UIImage* phoneImage = [[phoneIcon imageWithSize:CGSizeMake(40.0f, 40.0f)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

    return phoneImage;
}

+ (UIImage*)mailImage;
{
    FAKFoundationIcons* mailIcon = [FAKFoundationIcons mailIconWithSize:40];
    UIImage* mailImage = [[mailIcon imageWithSize:CGSizeMake(40.0f, 40.0f)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

    return mailImage;
}

+ (UIImage*)burstImage;
{
    FAKFoundationIcons* burstIcon = [FAKFoundationIcons burstIconWithSize:40];
    UIImage* burstImage = [[burstIcon imageWithSize:CGSizeMake(40.0f, 40.0f)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

    return burstImage;
}
+ (UIImage*)keyImage;
{
    FAKFoundationIcons* lockIcon = [FAKFoundationIcons lockIconWithSize:40.0f];
    UIImage* keyImage = [[lockIcon imageWithSize:CGSizeMake(40.0f, 40.0f)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

    return keyImage;
}
+ (UIImage*)tagImage;
{
    FAKFoundationIcons* tagIcon = [FAKFoundationIcons priceTagIconWithSize:40.0f];
    UIImage* tagImage = [[tagIcon imageWithSize:CGSizeMake(40.0f, 40.0f)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

    return tagImage;
}

+ (UIImage*)dimissImage;
{
    FAKFontAwesome* dimiss = [FAKFontAwesome chevronDownIconWithSize:25.0f];
    UIImage* dimissImage = [[dimiss imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return dimissImage;
}
+ (UIImage*)importImage
{
    FAKFontAwesome* import = [FAKFontAwesome plusIconWithSize:25.0f];
    UIImage* importImage = [[import imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return importImage;
}

+ (UIImage*)editImage
{
    FAKFontAwesome* magic = [FAKFontAwesome pencilIconWithSize:25.0f];
    UIImage* editImage = [[magic imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return editImage;
}

+ (UIImage*)locationArrowImage
{
    FAKFontAwesome* locationArrow = [FAKFontAwesome locationArrowIconWithSize:25.0f];
    UIImage* locationArrowImage = [[locationArrow imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return locationArrowImage;
}

+ (UIImage*)clockImage
{
    FAKFontAwesome* clock = [FAKFontAwesome clockOIconWithSize:25.0f];
    UIImage* clockImage = [[clock imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return clockImage;
}

+ (UIImage*)checkImage
{
    FAKFontAwesome* check = [FAKFontAwesome checkIconWithSize:25.0f];
    UIImage* checkImage = [[check imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return checkImage;
}

+ (UIImage*)rejectImage
{
    FAKFontAwesome* reject = [FAKFontAwesome closeIconWithSize:25.0f];
    UIImage* rejectImage = [[reject imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return rejectImage;
}
+ (UIImage*)flagImage;
{
    FAKFontAwesome* flag = [FAKFontAwesome flagIconWithSize:25.0f];
    UIImage* flagImage = [[flag imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return flagImage;
}
+ (UIImage*)dollarImage;
{
    FAKFontAwesome* dollar = [FAKFontAwesome dollarIconWithSize:25.0f];
    UIImage* dollarImage = [[dollar imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return dollarImage;
}
+ (UIImage*)percentImage;
{
    FAKFontAwesome* percent = [FAKFontAwesome pieChartIconWithSize:25.0f];
    UIImage* percentImage = [[percent imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return percentImage;
}

+ (UIImage*)incomeImage
{
    FAKFontAwesome* income = [FAKFontAwesome bullseyeIconWithSize:25.0f];
    UIImage* incomeImage = [[income imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return incomeImage;
}

+ (UIImage*)starImage;
{
    FAKFontAwesome* star = [FAKFontAwesome starOIconWithSize:25.0f];
    UIImage* starImage = [[star imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return starImage;
}

+ (UIImage*)likeImage;
{
    FAKFontAwesome* like = [FAKFontAwesome thumbsUpIconWithSize:25.0f];
    UIImage* likeImage = [[like imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return likeImage;
}

+ (UIImage*)editHeaderImage
{
    FAKFontAwesome* magic = [FAKFontAwesome pencilIconWithSize:15.0f];
    UIImage* editImage = [[magic imageWithSize:CGSizeMake(15, 15)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return editImage;
}
+ (UIImage*)settingsImage
{
    FAKFontAwesome* cog = [FAKFontAwesome cogIconWithSize:25.0f];
    UIImage* settingsImage = [[cog imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return settingsImage;
}

+ (UIImage*)orderImage
{
    FAKFontAwesome* order = [FAKFontAwesome checkSquareIconWithSize:25.0f];
    UIImage* orderImage = [[order imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return orderImage;
}

+ (UIImage*)radioButtonImage;
{
    
    FAKFontAwesome* icon = [FAKFontAwesome dotCircleOIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;

    
}
+ (UIImage*)saleOffImage;
{
    FAKFontAwesome* icon = [FAKFontAwesome tagIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
    
}
+ (UIImage*)requirementImage;
{
    FAKFontAwesome* icon = [FAKFontAwesome pencilSquareIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
}

+ (UIImage*)calendarImage;
{
    FAKFontAwesome* icon = [FAKFontAwesome calendarOIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
}

+ (UIImage*)userImage;
{
    
    FAKFontAwesome* icon = [FAKFontAwesome userIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
    
}
+ (UIImage*)logoutImage;
{
    FAKFontAwesome* icon = [FAKFontAwesome signOutIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
}

+ (UIImage*)pictureImage;
{
    FAKFontAwesome* icon = [FAKFontAwesome pictureOIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
}

+ (UIImage*)unlockImage;
{
    FAKFontAwesome* icon = [FAKFontAwesome unlockAltIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
}
+ (UIImage*)fileTextImage;
{
    FAKFontAwesome* icon = [FAKFontAwesome fileTextOIconWithSize:25.0f];
    UIImage* image = [[icon imageWithSize:CGSizeMake(25, 25)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
}
@end
