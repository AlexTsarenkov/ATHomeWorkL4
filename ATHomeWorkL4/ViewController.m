//
//  ViewController.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 08.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *techButton;
@property (strong, nonatomic) IBOutlet UIButton *musicButton;
@property (strong, nonatomic) IBOutlet UITableView *tableViewOutlet;
@property (strong, nonatomic) IBOutlet UISwitch *switchOutlet;

- (IBAction)techButtonClick:(id)sender;
- (IBAction)musicButtonClick:(id)sender;
@end

@implementation ViewController
//---------------------------------------------------------------------------------------------------

-(void) viewWillAppear:(BOOL)animated{
    [NSNotificationCenter createNotification:NOTIF_ARRAY selector:@selector(performNotification:) object:self];
}
//---------------------------------------------------------------------------------------------------

-(void) viewWillDisappear:(BOOL)animated{
    [NSNotificationCenter removeNotification];
}
//---------------------------------------------------------------------------------------------------
 - (void) performNotification: (NSNotification *) notif {
     self.viewArray = [notif.userInfo objectForKey:KEY_FOR_ARRAY];
     [self reloadTableView];
 }
//---------------------------------------------------------------------------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewArray = [[NSMutableArray alloc] init];
    
    if(self.isTech)
    {
        MakeArray *mkArray = [[MakeArray alloc] init];
        [mkArray setDelegate:self];
        [mkArray makeArrayTech];
    }
    else
    {
        MakeArray *mkArray = [[MakeArray alloc] init];
        [mkArray setDelegate:self];
        [mkArray makeArrayMusic];
    }
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

- (IBAction)switchClick:(id)sender {
    
    UISwitch *switchUI = (id) sender;
    MakeArray *mkArray = [[MakeArray alloc] init];
    
    if(switchUI.on){
        self.musicButton.enabled = YES;
        self.techButton.enabled = NO;
        [mkArray makeArrayTechNotification];

    }
    else
    {
        self.musicButton.enabled = NO;
        self.techButton.enabled = YES;
        [mkArray makeArrayMusicNotification];
     
    }
}
//---------------------------------------------------------------------------------------------------
- (IBAction)techButtonClick:(id)sender {
    MakeArray *mkArray = [[MakeArray alloc] init];
    [mkArray setDelegate:self];
    [mkArray makeArrayTech];
     
}
//---------------------------------------------------------------------------------------------------
- (IBAction)musicButtonClick:(id)sender {
    MakeArray *mkArray = [[MakeArray alloc] init];
    [mkArray setDelegate:self];
    [mkArray makeArrayMusic];

 
}

#pragma mark -MakeArrayDelegate

- (void) makeArrayTechReady:(MakeArray*) obj array:(NSMutableArray*) techArray{
    self.viewArray = techArray;
    self.musicButton.enabled = YES;
    self.techButton.enabled = NO;
    self.switchOutlet.on = YES;
    [self reloadTableView];
}

- (void) makeArrayMusicReady:(MakeArray*) obj array:(NSMutableArray*) musicArray{
    self.viewArray = musicArray;
    self.musicButton.enabled = NO;
    self.techButton.enabled = YES;
    self.switchOutlet.on = NO;
    [self reloadTableView];
}

@end

