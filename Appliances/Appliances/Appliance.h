//
//  Appliance.h
//  Appliances
//
//  Created by USER on 2018. 1. 10..
//  Copyright © 2018년 USER. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    NSString *productName;
    int voltage;
}

@property (copy) NSString *productName;
@property int voltage;

@end
