//
//  DetailViewController.h
//  App
//
//  Created by 呉 維 on 2017/04/21.
//  Copyright © 2017 呉 維. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

