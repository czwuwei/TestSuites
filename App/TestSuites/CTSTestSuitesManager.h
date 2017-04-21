//
//  CTSTestSuitesManager.h
//  FoxUITest
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTSTestGroup.h"

@protocol CTSTestSuitesLoader <NSObject>

-(CTSTestGroup*)loadTestGroup;

@end

@interface CTSTestSuitesManager : NSObject

@property(atomic, readonly) NSArray<CTSTestGroup*>* sharedTestGroupList;

-(void) registerTestSuitesLoader:(id<CTSTestSuitesLoader>) loader;

+(instancetype) sharedManager;

@end
