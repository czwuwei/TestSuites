//
//  CTSTestSuitesManager.m
//  FoxUITest
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import "CTSTestSuitesManager.h"

@implementation CTSTestSuitesManager

-(void)registerTestSuitesLoader:(id<CTSTestSuitesLoader>)loader {
    CTSTestSuitesManager* mngr = [[self class] sharedManager];
    CTSTestGroup* group = [loader loadTestGroup];
    if (group) {
        [(NSMutableArray*)mngr->_sharedTestGroupList addObject:group];
    }
}

+(instancetype) sharedManager {
    static CTSTestSuitesManager* instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [CTSTestSuitesManager new];
        instance->_sharedTestGroupList = [NSMutableArray array];
    });
    return instance;
}

@end
