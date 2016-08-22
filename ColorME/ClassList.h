//
//  ClassList.h
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassList : NSObject

@property (nonatomic ,copy) NSString *avatarUrl;
@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,copy) NSString *studyTime;
@property (nonatomic ,copy) NSString *address;
@property (nonatomic ,assign) NSInteger ID;
@property (nonatomic ,assign) NSInteger activated;
@property (nonatomic ,assign) NSInteger status;
@property (nonatomic ,assign) NSInteger paidTarget;
@property (nonatomic ,assign) NSInteger registerTarget;
@property (nonatomic ,assign) NSInteger totalRegisters;
@property (nonatomic ,assign) NSInteger totalPaid;


-(id)initWithDictionary:(NSDictionary*)dict;



@end
