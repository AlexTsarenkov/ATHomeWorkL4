//
//  DetailViewController.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 09.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label_Name.text = self.str_Name;
    self.label_Price.text = self.str_Price;
    self.label_Description.text = self.str_Description;
    self.uiImage_img.image = self.img;
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

- (IBAction)buttonBackClick:(id)sender {
    [self.navigationController
     popViewControllerAnimated:YES];
}
@end
