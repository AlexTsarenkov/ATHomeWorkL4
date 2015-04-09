//
//  ViewItem.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 08.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "ViewItem.h"

@implementation ViewItem

- (instancetype)initWithData: (NSString *) itemName itemPrice: (NSString *) itemPrice
{
    self = [super init];
    if (self) {
        self.itemName = itemName;
        self.itemPrice = itemPrice;
    }
    return self;
}

- (instancetype)initWithFullData: (NSString *) itemName
                       itemPrice:(NSString*) itemPrice
                 itemDescription:(NSString*) itemDescription
                         itemImg:(UIImage *) itemImg
{
    self = [super init];
    if (self) {
        self.itemName = itemName;
        self.itemPrice = itemPrice;
        self.itemDescription = itemDescription;
        self.itemImg = itemImg;
    }
    return self;
    
}
@end
