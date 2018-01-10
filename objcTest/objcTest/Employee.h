//
//  Employee.h
//  objcTest
//
//  Created by USER on 2018. 1. 9..
//  Copyright © 2018년 USER. All rights reserved.
//

#import "Person.h"

@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableSet *assets;
}

@property int employeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
