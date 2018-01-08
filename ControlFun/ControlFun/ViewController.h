//
//  ViewController.h
//  ControlFun
//
//  Created by USER on 2018. 1. 5..
//  Copyright © 2018년 USER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)sliderChanged:(UISlider *)sender;

@end

