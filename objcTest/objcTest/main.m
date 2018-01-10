//
//  main.m
//  objcTest
//
//  Created by USER on 2018. 1. 9..
//  Copyright © 2018년 USER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Employee *person = [[Employee alloc] init];
            
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - (i / 10.0)];
            [person setEmployeeID:i];
            
            [employees addObject:person];
            
            
            switch (i) {
                case 0:
                    [executives setObject:person forKey:@"CEO"];
                    break;
                case 1:
                    [executives setObject:person forKey:@"CTO"];
                    break;
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }

        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID"
                                                              ascending:YES];
        
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSLog(@"executives: %@", executives);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil;
        
        
//        Employee *p = [[Employee alloc] init];
//        
//        [p setHeightInMeters:1.7];
//        [p setWeightInKilos:70];
//        [p setEmployeeID:10];
//        
//        NSLog(@"weight : %.1d, height : %f", [p weightInKilos], [p heightInMeters]);
//        NSLog(@"employee's id : %d, bmi : %f", [p employeeID], [p bodyMassIndex]);
    }
    
    return 0;
}
