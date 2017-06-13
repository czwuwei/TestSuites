//
//  TestCaseSample.m
//  App
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import "TestCaseDeviceCheck.h"
#import <DeviceCheck/DeviceCheck.h>
#import <AFNetworking/AFNetworking.h>

@implementation TestCaseDeviceCheck

-(CTSTestGroup *)loadTestGroup {
    CTSTestGroup* group = [[CTSTestGroup alloc] initWithName:@"DeviceCheck Framework"];
    [group addTestItem:[CTSTestItem testItemWithName:@"generate token" handler:^(UIViewController * ctxViewCtrl) {
        NSLog(@"check result: %@", [DCDevice currentDevice].supported ? @"Supported" : @"Unsupported");

        [[DCDevice currentDevice] generateTokenWithCompletionHandler:^(NSData * _Nullable token, NSError * _Nullable error) {
            if (error) {
                NSLog(@"generateTokenWithCompletionHandler error: %@", error);
            }
            NSLog(@"generated token %@", token);

            NSString* urlString = @"http://cz-00277.local/deviceCheck/token";
            NSDictionary* postBody = @{@"token" : token};

            NSURLRequest* request = [[AFJSONRequestSerializer serializer] requestWithMethod:@"POST" URLString:urlString parameters:postBody error:nil];

            [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                NSLog(@"send token : %@", error ? error : @"OK");
            }] resume];

        }];
    }]];

    return group;
}

@end
