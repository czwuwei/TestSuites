//
//  CTSTestItem.h
//  FoxUITest
//
//  Created by 呉 維 on 2017/04/20.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CTSTestItem : NSObject

@property (nonatomic, copy) NSString* itemName;
@property (nonatomic, copy) void(^testHandler)(UIViewController*);

-(instancetype) initWithName:(NSString*) itemName handler:(void(^)(UIViewController*)) handler;

-(void)executeOnUI:(UIResponder*) responder;
-(void)execute;


+(instancetype) testItemWithName:(NSString*) itemName handler:(void(^)(UIViewController*)) handler;

@end
