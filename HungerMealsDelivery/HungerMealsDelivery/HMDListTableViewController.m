//
//  HMDListTableViewController.m
//  HungerMealsDelivery
//
//  Created by Vamsi on 17/09/16.
//  Copyright © 2016 Sukor. All rights reserved.
//

#import "HMDListTableViewController.h"
#import "HMDeliveryAddressTableViewCell.h"

@interface HMDListTableViewController ()

@end

@implementation HMDListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (indexPath.row == 0) {
//        UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        HMAddressViewController *addressVC= [mainStoryBoard instantiateViewControllerWithIdentifier:@"AddressViewController"];
//        [self.navigationController pushViewController:addressVC animated:YES];
//    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"AddressViewController";
    HMDeliveryAddressTableViewCell *cell = [self.addressTableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[HMDeliveryAddressTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    return cell;
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
