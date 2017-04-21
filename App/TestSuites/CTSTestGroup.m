//
//  CTSTestGroup.m
//  FoxUITest
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import "CTSTestGroup.h"

@implementation CTSTestGroup

- (instancetype)init
{
    self = [super init];
    if (self) {
        self->_itemList = [NSMutableArray array];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)groupName
{
    self = [self init];
    if (self) {
        self.groupName = groupName;
    }
    return self;
}

-(void)addTestItem:(CTSTestItem *)item {
    [(NSMutableArray*)self.itemList addObject:item];
}

@end
