//
//  CustomTableViewCell.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 13.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *cell_Img;
@property (strong, nonatomic) IBOutlet UILabel *cell_NameLabel;
@property (strong, nonatomic) IBOutlet UILabel *cell_PriceLabel;

@end
