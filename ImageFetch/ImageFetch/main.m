//
//  main.m
//  ImageFetch
//
//  Created by USER on 2018. 1. 10..
//  Copyright © 2018년 USER. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        NSURLSession *session = [NSURLSession sharedSession];
//        NSURLSessionDataTask *task = [session dataTaskWithURL:url
//                                            completionHandler:
//                                      ^(NSData * _Nullable data,
//                                        NSURLResponse * _Nullable response,
//                                        NSError * _Nullable error) {
//                                          if (!data) {
//                                              NSLog(@"fetch failed: %@", [error localizedDescription]);
//                                              return;
//                                          }
//                                          
//                                          NSLog(@"The file is %lu bytes", [data length]);
//                                          [data writeToFile:@"/Users/user/Desktop/logo-test.png"
//                                                 atomically:true];
//                                          NSLog(@"Success!");
//                                      }];
        
        NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                                                completionHandler:
                                      ^(NSData * data,
                                        NSURLResponse * response,
                                        NSError * error) {
                                          if (!data) {
                                              NSLog(@"fetch failed: %@", [error localizedDescription]);
                                              return;
                                          }
                                          
                                          NSLog(@"The file is %lu bytes", [data length]);
                                          [data writeToFile:@"/Users/user/Desktop/logo-test.png"
                                                 atomically:true];
                                          NSLog(@"Success!");
                                          
                                          NSData *readData = [NSData dataWithContentsOfFile:@"/Users/user/Desktop/logo-test.png"];
                                          NSLog(@"The file read from the disk has %lu bytes", [readData length]);
                                      }];
        
        [task resume];
    }
    
    while (true) { }
    return 0;
}
