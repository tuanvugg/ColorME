//
//  DashboardController.m
//  ColorME
//
//  Created by tuanvu on 8/21/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "DashboardController.h"

@interface DashboardController ()

@property (nonatomic, strong) NSDictionary* jsonDict;
@property (nonatomic, strong) NSMutableArray* classList;
@property (nonatomic, strong) NSMutableArray* moneyByDate;
@property (nonatomic, strong) NSMutableArray* registerByDate;
@property (nonatomic, strong) GenInfo* genInfo;
@end

@implementation DashboardController
static NSString* const chartCellID = @"chartCellID";
static NSString* const classListCellID = @"classListCellID";
static NSString* const genInfoCellID = @"genInfoCellID";

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Dashboard"];
    [[UILabel appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil] setFont:[UIFont fontWithName:@"RobotoCondensed-Regular" size:15]];
    [self dummyDataDashboard];
    [self registerNibForTableView];
    [_tblDashboard setBackgroundColor:[UIColor whiteColor]];
    [_tblDashboard reloadData];

    // Do any additional setup after loading the view from its nib.
}

- (void)registerNibForTableView
{
    UINib* chartCellNib = [UINib nibWithNibName:@"ChartCell" bundle:nil];
    [_tblDashboard registerNib:chartCellNib forCellReuseIdentifier:chartCellID];

    UINib* classListNib = [UINib nibWithNibName:@"ClassListCell" bundle:nil];
    [_tblDashboard registerNib:classListNib forCellReuseIdentifier:classListCellID];

    UINib* genInfoNib = [UINib nibWithNibName:@"GenInfoCell" bundle:nil];
    [_tblDashboard registerNib:genInfoNib forCellReuseIdentifier:genInfoCellID];
}
- (void)dummyDataDashboard
{
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"db" ofType:@"json"];
    NSData* jsonData = [[NSData alloc] initWithContentsOfFile:filePath];
    NSError* error = nil;
    _jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    NSArray* array = _jsonDict[@"classes"];
    _classList = [NSMutableArray new];
    for (int i = 0; i < array.count; i++) {

        NSDictionary* dict = array[i];
        ClassList* class = [[ClassList alloc] initWithDictionary:dict];
        [_classList addObject:class];
    }
    _moneyByDate = [[NSMutableArray alloc] init];
    NSArray* array2 = _jsonDict[@"money_by_date"];
    for (int i = 0; i < array2.count; i++) {

        NSInteger val = [array2[i] integerValue];
        NSInteger newVal = val / 1000000;
        [_moneyByDate addObject:[NSNumber numberWithInteger:newVal]];
    }
    _registerByDate = [[NSMutableArray alloc] init];
    NSArray* array3 = _jsonDict[@"registers_by_date"];
    for (int i = 0; i < array3.count; i++) {

        NSInteger val = [array3[i] integerValue];
        [_registerByDate addObject:[NSNumber numberWithInteger:val]];
    }

    _genInfo = [[GenInfo alloc] initWithDictionary:_jsonDict];

    NSLog(@"%@", _jsonDict[@"money_by_date"]);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 3;
}
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section;
{
    if (section == 0) {
        return 1;
    }
    else if (section == 1) {
        return 2;
    }
    else if (section == 2) {
        return _classList.count;
    }

    return 0;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath;
{

    if (indexPath.section == 0) {

        GenInfoCell* cell = (GenInfoCell*)[tableView dequeueReusableCellWithIdentifier:genInfoCellID];
        if (indexPath.row == 0) {
            [cell displayCellWithGenInfo:_genInfo];
        }

        return cell;
    }

    if (indexPath.section == 1) {
        ChartCell* cell = (ChartCell*)[tableView dequeueReusableCellWithIdentifier:chartCellID];
        if (indexPath.row == 0) {
            [cell displayChartCellWithDataSource:_moneyByDate];
            cell.lblTitle.text = @"Doanh Thu Theo Ngày";
        }
        if (indexPath.row == 1) {

            [cell displayChartCellWithDataSource:_registerByDate];
            cell.lblTitle.text = @"Đăng Kí Theo Ngày";
        }
        return cell;
    }
    if (indexPath.section == 2) {
        ClassListCell* cell = (ClassListCell*)[tableView dequeueReusableCellWithIdentifier:classListCellID];

        ClassList* class = _classList[indexPath.row];

        [cell.classIcon sd_setImageWithURL:[NSURL URLWithString:class.avatarUrl]
                          placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
        cell.lblClassName.text = class.name;
        cell.lblClassTime.text = class.studyTime;

        cell.progPaid.progress = (float)class.totalPaid / class.paidTarget;
        cell.progRegister.progress = (float)class.totalRegisters / class.registerTarget;

        return cell;
    }

    return nil;
}

- (nullable NSString*)tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section;
{

    if (section == 0) {
        return @"Thông Tin Chung";
    }
    if (section == 1) {
        return @"Biểu Đồ";
    }
    if (section == 2) {
        return @"Danh Sách Lớp";
    }

    return nil;
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.section == 0) {
        return 180;
    }
    else if (indexPath.section == 1) {
        return 250;
    }
    else {
        return 100;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
