//
//  ViewController.m
//  ViewSwitcher
//
//  Created by USER on 2018. 1. 8..
//  Copyright © 2018년 USER. All rights reserved.
//

#import "ViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.blueViewController = [[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchViews:(id)sender {
    if (self.yellowViewController.view.superview == nil) {
        
    } else {
        
    }
}

@end
