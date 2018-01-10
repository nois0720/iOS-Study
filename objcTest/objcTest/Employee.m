//
//  Employee.m
//  objcTest
//
//  Created by USER on 2018. 1. 9..
//  Copyright © 2018년 USER. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

-(void)addAssetsObject:(Asset *)a
{
    if (!assets) {
        assets = [[NSMutableSet alloc] init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

-(unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    
    return sum;
}

-(float)bodyMassIndex
{
    return [super bodyMassIndex] * 0.9;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee: %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}

-(void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
