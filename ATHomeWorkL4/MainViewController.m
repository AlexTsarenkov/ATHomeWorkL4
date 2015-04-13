//
//  MainViewController.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 13.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.techButton addTarget:self action:@selector(goTech) forControlEvents:UIControlEventTouchUpInside];
    [self.musicButton addTarget:self action:@selector(goMusic) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) goTech {
    ViewController * mainView = [self.storyboard instantiateViewControllerWithIdentifier:@"mainView"];
    mainView.isTech = YES;
    [self.navigationController pushViewController:mainView animated:YES];
}

- (void) goMusic {
    ViewController * mainView = [self.storyboard instantiateViewControllerWithIdentifier:@"mainView"];
    mainView.isTech = NO;
    [self.navigationController pushViewController:mainView animated:YES];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
