//
//  ViewController.m
//  ControlFun
//
//  Created by USER on 2018. 1. 5..
//  Copyright © 2018년 USER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:true];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    int progress = (int)roundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
}

@end
