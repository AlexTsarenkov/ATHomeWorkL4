//
//  ViewController.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 08.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property(strong,nonatomic) NSMutableArray* viewArray;
@property BOOL isTech;

- (IBAction)backButtonClick:(id)sender;

@end

