//
//  ViewController.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 08.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "MakeArray.h"
#import "ViewItem.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"



@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, MakeArrayDelegate>

@property(strong,nonatomic) NSMutableArray* viewArray;
@property BOOL isTech;

- (IBAction)backButtonClick:(id)sender;
- (IBAction)switchClick:(id)sender;
- (IBAction)addButtonClick:(id)sender;


@end

