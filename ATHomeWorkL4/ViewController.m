//
//  ViewController.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 08.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "ViewController.h"
#import "ViewItem.h"
#import "DetailViewController.h"
#include "CustomTableViewCell.h"
#include "ViewItemMusic.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *techButton;
@property (strong, nonatomic) IBOutlet UIButton *musicButton;
@property (strong, nonatomic) IBOutlet UITableView *tableViewOutlet;

- (IBAction)techButtonClick:(id)sender;
- (IBAction)musicButtonClick:(id)sender;
@end

@implementation ViewController


//---------------------------------------------------------------------------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewArray = [[NSMutableArray alloc] init];
    
    if(self.isTech)
        [ViewItem fillArray:self.viewArray];
    else
        [ViewItemMusic fillArray:self.viewArray];
    //NSLog(@"%@",array);
}
//---------------------------------------------------------------------------------------------------
-(void) reloadTableView {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableViewOutlet reloadData];
    });
}
//---------------------------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//---------------------------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.viewArray count];
}

//---------------------------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewItem *item = [self.viewArray objectAtIndex:indexPath.row];
    
    static NSString *simpleTableIdentifier = @"Cell";
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

//    if (cell == nil) {
//        cell = [[UITableViewCell alloc]
//                initWithStyle:UITableViewCellStyleDefault
//                reuseIdentifier:simpleTableIdentifier];
//    }
    
    cell.cell_NameLabel.text = item.itemName;
    cell.cell_PriceLabel.text = [NSString stringWithFormat:@"Цена %@ руб.", item.itemPrice];
    cell.cell_Img.image = item.itemImg;
//    NSLog(@"%@",item.itemPrice);
    
    return cell;
}
//---------------------------------------------------------------------------------------------------

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewItem *item = [self.viewArray objectAtIndex:indexPath.row];
    
    DetailViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"dtailView"];
    
    detail.str_Name = item.itemName;
    detail.str_Price = [NSString stringWithFormat:@"Цена - %@",item.itemPrice];
    detail.str_Description = item.itemDescription;
    detail.img = item.itemImg;
    
    [self.navigationController pushViewController:detail animated:YES];
    
//---------------------------------------------------------------------------------------------------
}
- (IBAction)backButtonClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
//---------------------------------------------------------------------------------------------------
- (IBAction)techButtonClick:(id)sender {
    [self.viewArray removeAllObjects];
    [ViewItem fillArray:self.viewArray];
    self.musicButton.enabled = YES;
    self.techButton.enabled = NO;
    [self reloadTableView];
}
//---------------------------------------------------------------------------------------------------
- (IBAction)musicButtonClick:(id)sender {
    [self.viewArray removeAllObjects];
    [ViewItemMusic fillArray:self.viewArray];
    self.musicButton.enabled = NO;
    self.techButton.enabled = YES;
    [self reloadTableView];
}
@end
