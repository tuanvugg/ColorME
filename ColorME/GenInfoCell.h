//
//  GenInfoCell.h
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GenInfo.h"

@interface GenInfoCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel* lblTotalMoney;

@property (weak, nonatomic) IBOutlet UILabel* lblRegNumber;

@property (weak, nonatomic) IBOutlet UILabel* lblPaidNumber;

@property (weak, nonatomic) IBOutlet UILabel* lblUncall;

@property (weak, nonatomic) IBOutlet UILabel* lblTotalClass;

@property (weak, nonatomic) IBOutlet UILabel* lblRemainDays;

-(void)displayCellWithGenInfo:(GenInfo*)genInfo;

@end
