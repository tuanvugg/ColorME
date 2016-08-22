//
//  ChartCell.h
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UUChart.h"

@interface ChartCell : UITableViewCell<UUChartDataSource>
@property (nonatomic ,strong) NSArray *datasource;
- (void)displayChartCellWithDataSource:(NSArray*)dataSource;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@end
