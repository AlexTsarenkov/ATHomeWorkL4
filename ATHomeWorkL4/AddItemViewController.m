//
//  AddItemViewController.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 09.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "AddItemViewController.h"
#import "ViewController.h"
#import "ViewItem.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addItemButtonClicked:(id)sender {
    
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"mainView"];
    
    ViewItem *item = [[ViewItem alloc] init];
    
    item.itemName = self.text_ItemName.text;
    item.itemPrice = self.text_ItemPrice.text;
    item.itemDescription = self.text_ItemDesc.text;
    
    [view.viewArray addObject:item];
    
    [self.navigationController pushViewController:view animated:YES];
}
@end
