//
//  Asset.m
//  objcTest
//
//  Created by USER on 2018. 1. 9..
//  Copyright © 2018년 USER. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, holder, resaleValue;

- (NSString *)description
{
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@, $%d, assigned to %@>",
                [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@, $%d, unassigned>",
                [self label], [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
