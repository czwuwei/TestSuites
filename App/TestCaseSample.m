//
//  TestCaseSample.m
//  App
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import "TestCaseSample.h"

@implementation TestCaseSample

-(CTSTestGroup *)loadTestGroup {
    CTSTestGroup* group = [[CTSTestGroup alloc] initWithName:@"sample case"];
    [group addTestItem:[CTSTestItem testItemWithName:@"case 1" handler:^(UIViewController * ctxViewCtrl) {
        NSLog(@"test case 1");
    }]];

    return group;
}

@end
