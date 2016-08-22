//
//  ChartCell.m
//  ColorME
//
//  Created by tuanvu on 8/22/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "ChartCell.h"

@implementation ChartCell {
    UUChart* chartView;
}
- (void)awakeFromNib
{
    [super awakeFromNib];

    // Initialization code
}
//- (void)dummyDataDashboard
//{
//    
//    
//    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"db" ofType:@"json"];
//    NSData* jsonData = [[NSData alloc] initWithContentsOfFile:filePath];
//    NSError* error = nil;
//    NSDictionary* jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
//    _datasource = [[NSMutableArray alloc]init];
//    NSArray *array = jsonDict[@"money_by_date"];
//    for (int i = 0; i< array.count; i++) {
//        
//        NSInteger val = [array[i] integerValue];
//        NSInteger newVal = val/1000000;
//        [_datasource addObject:[NSNumber numberWithInteger:newVal]];
//        
//    }
//    
//}

- (void)displayChartCellWithDataSource:(NSArray*)dataSource;
{

    _datasource = [NSArray arrayWithArray:dataSource];


    if (chartView) {
        [chartView removeFromSuperview];
        chartView = nil;
    }

    chartView = [[UUChart alloc] initWithFrame:CGRectMake(20, 0, [UIScreen mainScreen].bounds.size.width , 200)
                                    dataSource:self
                                         style:UUChartStyleBar];

    [chartView showInView:self.contentView];
}
- (NSArray*)getXTitles:(int)num
{
    NSMutableArray* xTitles = [NSMutableArray array];
    for (int i = 0; i < num; i++) {
        NSString* str = [NSString stringWithFormat:@"%d", i+1];
        [xTitles addObject:str];
    }
    return xTitles;
}

- (NSArray*)chartConfigAxisXLabel:(UUChart*)chart
{
    int num = (int)_datasource.count;
    return [self getXTitles:num];
}
- (NSArray*)chartConfigAxisYValue:(UUChart*)chart
{
    return @[ _datasource ];
}
- (NSArray *)chartConfigColors:(UUChart *)chart
{
    return @[[UUColor green],[UUColor red],[UUColor brown]];
}

- (CGRange)chartRange:(UUChart*)chart
{

    return CGRangeMake(25, 0);
}

- (CGRange)chartHighlightRangeInLine:(UUChart *)chart
{
        return CGRangeMake(25, 75);
}

- (BOOL)chart:(UUChart*)chart showHorizonLineAtIndex:(NSInteger)index
{
    return YES;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
