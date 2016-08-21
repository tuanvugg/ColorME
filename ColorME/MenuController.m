//
//  MenuController.m
//  ColorME
//
//  Created by tuanvu on 8/21/16.
//  Copyright © 2016 tuanvu. All rights reserved.
//

#import "MenuController.h"

@interface MenuController ()
@property (weak, nonatomic) IBOutlet UITableView* tblMenu;
@property (nonatomic, strong) NSMutableArray* menuItem;
@end

@implementation MenuController

static NSString* const menuCellId = @"menuCellId";
static NSString* const avatarCellId = @"avatarCellId";

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self registerNibForTableViewCell];
    [self.tblMenu setBackgroundColor:[UIColor clearColor]];
    [self.tblMenu setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    _menuItem = [NSMutableArray arrayWithArray:@[ @"Thu Học Phí", @"Chuyển Tiền", @"Điểm Danh", @"Đăng Xuất" ]];

    [_tblMenu registerNib:[UINib nibWithNibName:@"MenuCell" bundle:nil] forCellReuseIdentifier:menuCellId];
    [_tblMenu registerNib:[UINib nibWithNibName:@"AvatarCell" bundle:nil] forCellReuseIdentifier:avatarCellId];
    // Do any additional setup after loading the view from its nib.
}

- (void)registerNibForTableViewCell
{
    UINib* nib = [UINib nibWithNibName:@"MenuCell" bundle:nil];
    [_tblMenu registerNib:nib forCellReuseIdentifier:menuCellId];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section;
{
    if (section == 0) {
        return 1;
    }
    else if (section == 1) {
        return _menuItem.count;
    }

    return 0;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath;
{
    if (indexPath.section == 0) {
        AvatarCell* cell = (AvatarCell*)[tableView dequeueReusableCellWithIdentifier:avatarCellId];
        return cell;
    }

    if (indexPath.section == 1) {
        MenuCell* cell = (MenuCell*)[tableView dequeueReusableCellWithIdentifier:menuCellId];
        cell.lblTitle.text = _menuItem[indexPath.row];
        if (indexPath.row == 0) {
            cell.menuIcon.image = [Utils dollarImage];
        }
        if (indexPath.row == 1) {
            cell.menuIcon.image = [Utils creditCardImage];
        }
        if (indexPath.row == 2) {
            cell.menuIcon.image = [Utils checkImage];
        }
        if (indexPath.row == 3) {
            cell.menuIcon.image = [Utils logoutImage];
        }
        return cell;
    }

    return nil;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    UIViewController* viewSwitchTo = nil;
    switch (indexPath.row) {
    case 0: {
        viewSwitchTo = [APPDELEGATE naviTHP];
        break;
    }
    case 1: {
        viewSwitchTo = [APPDELEGATE naviCT];
        break;
    }
    case 2: {
        viewSwitchTo = [APPDELEGATE naviDD];
        break;
    }
    case 3: {

        break;
    }

    default:
        break;
    }

    if (viewSwitchTo) {

        [self.mm_drawerController setCenterViewController:viewSwitchTo withCloseAnimation:YES completion:^(BOOL finished) {
            
            [tableView deselectRowAtIndexPath:indexPath animated:YES];

        }];
    }
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.section == 0) {
        return 120;
    }
    else if (indexPath.section == 1) {
        return 50;
    }

    return 0;
}
@end
