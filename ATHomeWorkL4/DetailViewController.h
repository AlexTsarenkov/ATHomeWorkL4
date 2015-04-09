//
//  DetailViewController.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 09.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString * str_Name;
@property (strong, nonatomic) NSString * str_Price;
@property (strong, nonatomic) NSString * str_Description;
@property (strong, nonatomic) UIImage  * img;

@property (strong, nonatomic) IBOutlet UIImageView *uiImage_img;
@property (strong, nonatomic) IBOutlet UILabel *label_Name;
@property (strong, nonatomic) IBOutlet UILabel *label_Price;
@property (strong, nonatomic) IBOutlet UITextView *label_Description;

@end
