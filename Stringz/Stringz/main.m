//
//  main.m
//  Stringz
//
//  Created by USER on 2018. 1. 10..
//  Copyright © 2018년 USER. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        NSError *error = nil;
        
        BOOL success = [str writeToFile:@"/asdf/user/Desktop/test.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        
        if (success) {
            NSLog(@"done writing /asdf/user/Desktop/test.txt");
        } else {
            NSLog(@"writing /Users/user/Desktop/test.txt failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
