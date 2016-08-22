//
//  ClassListCell.h
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *classIcon;
@property (weak, nonatomic) IBOutlet UILabel *lblClassName;
@property (weak, nonatomic) IBOutlet UILabel *lblClassTime;
@property (weak, nonatomic) IBOutlet UIProgressView *progPaid;
@property (weak, nonatomic) IBOutlet UIProgressView *progRegister;

@end
