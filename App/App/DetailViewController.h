//
//  DetailViewController.h
//  App
//
//  Created by 呉 維 on 2017/04/21.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTSTestSuitesManager.h"

@interface DetailViewController : UITableViewController

@property (strong, nonatomic) CTSTestGroup *detailItem;

@end

