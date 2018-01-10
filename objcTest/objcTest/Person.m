//
//  Person.m
//  objcTest
//
//  Created by USER on 2018. 1. 9..
//  Copyright © 2018년 USER. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize weightInKilos;
@synthesize heightInMeters;

-(float)bodyMassIndex {
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
