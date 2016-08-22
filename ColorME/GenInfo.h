//
//  GenInfo.h
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GenInfo : NSObject

@property (nonatomic ,copy) NSString *totalMoney;
@property (nonatomic ,assign) NSInteger registerNumber;
@property (nonatomic ,assign) NSInteger paidNumber;
@property (nonatomic ,assign) NSInteger uncalledNumber;
@property (nonatomic ,assign) NSInteger totalClasses;
@property (nonatomic ,assign) NSInteger remainDays;

-(id)initWithDictionary:(NSDictionary*)dict;



@end
