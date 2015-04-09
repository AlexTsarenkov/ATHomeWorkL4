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

@interface ViewController ()

@end

@implementation ViewController

//---------------------------------------------------------------------------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewArray = [[NSMutableArray alloc] init];
    
//    
//    NSString *nameStr = @"Телевизор,Чайник,Утюг,Микроволновая Печь,Плита";
//    NSString *priceStr = @"143,355.3,343.3,524,3546";
//    
//    NSDictionary *dictionary = [[NSDictionary alloc]
//                               initWithObjects:[priceStr componentsSeparatedByString:@","]
//                               forKeys:[nameStr componentsSeparatedByString:@","]];
//    
//    for (int i = 0; i < dictionary.count; i++) {
//        
//    }
    NSString *teleDesc = @"Электронное устройство для приёма и отображения изображения и звука, передаваемых по беспроводным каналам или по кабелю (в том числе телевизионных программ или сигналов от устройств воспроизведения видеосигнала — например, видеомагнитофонов или DVD-проигрывателей).";
    NSString *ironDesc = @"Элемент бытовой техники для разглаживания складок и заминов на одежде. Процесс разглаживания называют глажкой или глажением.";
    NSString *teaPotDesc = @"Небольшой закрытый сосуд с носиком, крышкой (как правило, хотя бывают и исключения — см. фото) и ручкой для подогревания и кипячения воды. Обычно чайники изготавливаются из металла.";
    NSString *microWaveDesc = @"Электроприбор, использующий явление разогрева водосодержащих веществ электромагнитным излучением дециметрового диапазона (обычно с частотой 2450 МГц) и предназначенный для быстрого приготовления, подогрева или размораживания пищи, в быту или на производстве.";
    
    UIImage *teleImg = [UIImage imageNamed:@"Телевизор"];
    UIImage *ironImg = [UIImage imageNamed:@"Утюг"];
    UIImage *teaPotImg = [UIImage imageNamed:@"Чайник"];
    UIImage *microWaveImg = [UIImage imageNamed:@"Микроволновка"];
    
    [self.viewArray addObject: [[ViewItem alloc] initWithFullData:@"Теливизор" itemPrice: @"123" itemDescription:teleDesc itemImg:teleImg]];
    [self.viewArray addObject: [[ViewItem alloc] initWithFullData:@"Утюг" itemPrice: @"3434" itemDescription:ironDesc itemImg:ironImg]];
    [self.viewArray addObject: [[ViewItem alloc] initWithFullData:@"Чайник" itemPrice: @"5343"itemDescription:teaPotDesc itemImg:teaPotImg]];
    [self.viewArray addObject: [[ViewItem alloc] initWithFullData:@"Микроволновая печь" itemPrice: @"2453" itemDescription:microWaveDesc itemImg:microWaveImg]];
    
//    [self.viewArray addObject: [[ViewItem alloc] initWithData:@"Теливизор" itemPrice: @"123"]];
//    [self.viewArray addObject: [[ViewItem alloc] initWithData:@"Утюг" itemPrice: @"3434"]];
//    [self.viewArray addObject: [[ViewItem alloc] initWithData:@"Чайник" itemPrice: @"5343"]];
//    [self.viewArray addObject: [[ViewItem alloc] initWithData:@"Микроволновая печь" itemPrice: @"2453"]];
    
    //NSLog(@"%@",array);
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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = item.itemName;
    cell.detailTextLabel.text = item.itemPrice;
    
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
    
    
}
@end
