//
//  CTSTestItem.m
//  FoxUITest
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import "CTSTestItem.h"

@implementation CTSTestItem

-(instancetype)initWithName:(NSString *)itemName handler:(void (^)(UIViewController *))handler {
    self = [super init];
    if (self) {
        self.itemName = itemName;
        self.testHandler = handler;
    }
    return self;
}

-(void)execute {
    [self executeOnUI:nil];
}

-(void)executeOnUI:(UIResponder *)responder {
    NSLog(@"execute test %@", self.itemName);
    self.testHandler([self getCurrentViewCtrl:responder]);
}

-(UIViewController*) getCurrentViewCtrl:(UIResponder*) responder {
    while ((responder = responder.nextResponder) != nil) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)responder;
        }
    }
    return nil;
}


+(instancetype)testItemWithName:(NSString *)itemName handler:(void (^)(UIViewController *))handler {
    return [[CTSTestItem alloc] initWithName:itemName handler:handler];
}

@end
