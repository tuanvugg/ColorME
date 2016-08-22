//
//  ClassListCell.m
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "ClassListCell.h"

@implementation ClassListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _classIcon.layer.cornerRadius = 40;
    _classIcon.layer.masksToBounds = YES;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
