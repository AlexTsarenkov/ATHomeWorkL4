//
//  ViewItemMusic.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 13.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <UIKit/UIKit.h>

@interface ViewItemMusic : NSObject

@property(strong,nonatomic) NSString * itemName;
@property(strong,nonatomic) NSString * itemPrice;
@property(strong,nonatomic) NSString * itemDescription;
@property(strong,nonatomic) UIImage  * itemImg;

- (instancetype)initWithData: (NSString *) itemName itemPrice: (NSString *) itemPrice;


- (instancetype)initWithFullData: (NSString *) itemName
                       itemPrice:(NSString*) itemPrice
                 itemDescription:(NSString*) itemDescription
                         itemImg:(UIImage *) itemImg;

+ (void) fillArray: (NSMutableArray *) array;

@end
