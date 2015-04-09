//
//  AddItemViewController.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 09.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewController : UIViewController

//@property (strong, nonatomic) IBOutlet UITextField *text_ItemName;
//@property (strong, nonatomic) IBOutlet UITextField *text_ItemPrice;
//@property (strong, nonatomic) IBOutlet UITextView *text_ItemDesc;
@property (strong, nonatomic) IBOutlet UITextField *text_ItemName;
@property (strong, nonatomic) IBOutlet UITextField *text_ItemPrice;
@property (strong, nonatomic) IBOutlet UITextView *text_ItemDesc;

- (IBAction)addItemButtonClicked:(id)sender;

@end