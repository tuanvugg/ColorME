//
//  GenInfoCell.m
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "GenInfoCell.h"

@implementation GenInfoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


-(void)displayCellWithGenInfo:(GenInfo*)genInfo
{

    _lblUncall.text = [NSString stringWithFormat:@"Số lượng học viên chưa gọi điên : %ld",genInfo.uncalledNumber];
    _lblRegNumber.text = [NSString stringWithFormat:@"Tổng Số Đăng Kí : %ld",genInfo.registerNumber];
    _lblPaidNumber.text = [NSString stringWithFormat:@"Số Học Viên Đã Đóng Tiền : %ld",genInfo.paidNumber];
    _lblTotalClass.text = [NSString stringWithFormat:@"Tổng Số Lớp : %ld",genInfo.totalClasses];
    _lblTotalMoney.text = [NSString stringWithFormat:@"Tổng Số Tiền Đã Thu : %@",genInfo.totalMoney];
    _lblRemainDays.text = [NSString stringWithFormat:@"Số Ngày Còn Lại : %ld",genInfo.remainDays];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
