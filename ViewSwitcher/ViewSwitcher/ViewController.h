//
//  ViewController.h
//  ViewSwitcher
//
//  Created by USER on 2018. 1. 8..
//  Copyright © 2018년 USER. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YellowViewController;
@class BlueViewController;

@interface ViewController : UIViewController

@property (strong, nonatomic) YellowViewController *yellowViewController;
@property (strong, nonatomic) BlueViewController *blueViewController;

- (IBAction)switchViews:(id)sender;

@end

