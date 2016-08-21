//
//  AvatarCell.m
//  ColorME
//
//  Created by tuanvu on 8/21/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "AvatarCell.h"

@implementation AvatarCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = kAppColor;
    self.avatar.image = [UIImage imageNamed:@"logo.jpg"];
    self.avatar.layer.cornerRadius = 50;
    self.avatar.layer.masksToBounds = YES;
    
    self.lblName.textColor = [UIColor whiteColor];
    self.lblName.text = @"Angelia Jolie";
    
    self.lblUserId.textColor = [UIColor whiteColor];
    self.lblUserId.text = @"AngeliaJolie@gmail.com";
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
