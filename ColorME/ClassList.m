//
//  ClassList.m
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "ClassList.h"

@implementation ClassList

- (id)initWithDictionary:(NSDictionary*)dict;

{
    self = [super init];
    if (self) {

        _ID = [dict[@"id"] integerValue];
        _activated = [dict[@"activated"] integerValue];
        _status = [dict[@"status"] integerValue];
        _paidTarget = [dict[@"paid_target"] integerValue];
        _registerTarget = [dict[@"register_target"] integerValue];
        _totalRegisters = [dict[@"total_registers"] integerValue];
        _totalPaid = [dict[@"total_paid"] integerValue];

        _avatarUrl = dict[@"avatar_url"];
        _name = dict[@"name"];
        _studyTime = dict[@"study_time"];
        _address = dict[@"address"];
    }

    return self;
}
@end
