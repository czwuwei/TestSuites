//
//  CTSTestGroup.h
//  FoxUITest
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTSTestItem.h"

@interface CTSTestGroup : NSObject

@property (nonatomic, copy) NSString* groupName;
@property (nonatomic, readonly) NSArray<CTSTestItem*>* itemList;

-(instancetype)initWithName:(NSString*) groupName;

-(void) addTestItem:(CTSTestItem*) item;

@end
