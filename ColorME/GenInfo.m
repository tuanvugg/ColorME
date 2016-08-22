//
//  GenInfo.m
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "GenInfo.h"

@implementation GenInfo

-(id)initWithDictionary:(NSDictionary*)dict
{
    
    self = [super init];
    if (self) {
        _totalMoney = dict[@"total_money"];
        _registerNumber = [dict[@"register_number"] integerValue];
        _paidNumber = [dict[@"paid_number"] integerValue];
        _uncalledNumber = [dict[@"uncalled_number"] integerValue];
        _totalClasses = [dict[@"register_number"] integerValue];
        _remainDays = [dict[@"remain_days"] integerValue];
    }
    
    return self;
    
    
}

@end
