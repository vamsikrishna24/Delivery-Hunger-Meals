//
//  HMDListTableViewController.h
//  HungerMealsDelivery
//
//  Created by Vamsi on 17/09/16.
//  Copyright © 2016 Sukor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HMDListTableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *addressTableView;

@end
