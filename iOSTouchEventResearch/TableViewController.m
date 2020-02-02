//
//  TableViewController.m
//  iOSTouchEventResearch
//
//  Created by qiyu on 2020/2/2.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "TableViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface TableViewController ()

@property (nonatomic, strong) NSArray *titlesArray;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTitlesArray];
}

- (void)initTitlesArray {
    self.titlesArray = @[@"UIResponder&UIGestureRecognizer", @"UIGestureRecognizer&UIControl"];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            YellowViewController *yellowVC = [[YellowViewController alloc] init];
            [self.navigationController pushViewController:yellowVC animated:YES];
            break;
        }
        case 1: {
            BlueViewController *blueVC = [[BlueViewController alloc] init];
            [self.navigationController pushViewController:blueVC animated:YES];
            break;
        }
        
        default:
            break;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titlesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableViewCell"];
    }
    static NSInteger index = 0;
    cell.textLabel.text = self.titlesArray[index++];
    return cell;
}

@end
