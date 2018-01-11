//
//  Appliance.m
//  Appliances
//
//  Created by USER on 2018. 1. 10..
//  Copyright © 2018년 USER. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName, voltage;

-(id) init {
    self = [super init];
    voltage = 120;
    
    return self;
}

@end
