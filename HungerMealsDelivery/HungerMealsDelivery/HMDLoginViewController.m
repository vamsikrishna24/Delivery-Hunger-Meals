//
//  HMDLoginViewController.m
//  HungerMealsDelivery
//
//  Created by Vamsi on 17/09/16.
//  Copyright © 2016 Sukor. All rights reserved.
//

#import "HMDLoginViewController.h"

@interface HMDLoginViewController ()

@end

@implementation HMDLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frameRect = self.userNameTextField.frame;
    frameRect.size.height = 40; // <-- Specify the height you want here.
    self.userNameTextField.frame = frameRect;
    self.passwordTextField.frame = frameRect;
    
    UIColor *color = [UIColor colorWithRed:237.0f/255.0f green:140.0f/255.0f blue:37.0f/255.0f alpha:0.5];
    self.userNameTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Email Id" attributes:@{NSForegroundColorAttributeName: color}];
    self.passwordTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: color}];
    
    CALayer *bottomBorder = [CALayer layer];
    bottomBorder.frame = CGRectMake(0.0f, self.userNameTextField.frame.size.height - 1, self.userNameTextField.frame.size.width, 1.0f);
    bottomBorder.backgroundColor = [UIColor colorWithRed:159.0f/255.0f green:159.0f/255.0f blue:159.0f/255.0f alpha:0.5].CGColor;
    [self.userNameTextField.layer addSublayer:bottomBorder];
    
    CALayer *bottomBorder1 = [CALayer layer];
    bottomBorder1.frame = CGRectMake(0.0f, self.passwordTextField.frame.size.height - 1, self.passwordTextField.frame.size.width, 1.0f);
    bottomBorder1.backgroundColor = [UIColor colorWithRed:159.0f/255.0f green:159.0f/255.0f blue:159.0f/255.0f alpha:0.5].CGColor;
    [self.passwordTextField.layer addSublayer:bottomBorder1];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
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
