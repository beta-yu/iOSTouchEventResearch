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
#import "WhiteViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

@interface TableViewController ()

@property (nonatomic, strong) NSArray *titlesArray;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTitlesArray];
}

- (void)initTitlesArray {
    self.titlesArray = @[@"HitTestingResearch", @"EventInterception", @"TouchsMovedRespond", @"UIResponder&UIGestureRecognizer", @"UIGestureRecognizer&UIControl"];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            WhiteViewController *whiteVC = [[WhiteViewController alloc] init];
            [self.navigationController pushViewController:whiteVC animated:YES];
            break;
        }
        case 1: {
            ViewController1 *VC1 = [[ViewController1 alloc] init];
            [self.navigationController pushViewController:VC1 animated:YES];
            break;
        }
        case 2: {
            ViewController2 *VC2 = [[ViewController2 alloc] init];
            [self.navigationController pushViewController:VC2 animated:YES];
            break;
        }
        case 3: {
            YellowViewController *yellowVC = [[YellowViewController alloc] init];
            [self.navigationController pushViewController:yellowVC animated:YES];
            break;
        }
        case 4: {
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
