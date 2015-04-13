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

+ (void) fillArray: (NSMutableArray *) array{
    NSString *teleDesc = @"Электронное устройство для приёма и отображения изображения и звука, передаваемых по беспроводным каналам или по кабелю (в том числе телевизионных программ или сигналов от устройств воспроизведения видеосигнала — например, видеомагнитофонов или DVD-проигрывателей).";
    NSString *ironDesc = @"Элемент бытовой техники для разглаживания складок и заминов на одежде. Процесс разглаживания называют глажкой или глажением.";
    NSString *teaPotDesc = @"Небольшой закрытый сосуд с носиком, крышкой (как правило, хотя бывают и исключения — см. фото) и ручкой для подогревания и кипячения воды. Обычно чайники изготавливаются из металла.";
    NSString *microWaveDesc = @"Электроприбор, использующий явление разогрева водосодержащих веществ электромагнитным излучением дециметрового диапазона (обычно с частотой 2450 МГц) и предназначенный для быстрого приготовления, подогрева или размораживания пищи, в быту или на производстве.";
    
    UIImage *teleImg = [UIImage imageNamed:@"Телевизор"];
    UIImage *ironImg = [UIImage imageNamed:@"Утюг"];
    UIImage *teaPotImg = [UIImage imageNamed:@"Чайник"];
    UIImage *microWaveImg = [UIImage imageNamed:@"Микроволновка"];

    [array addObject:[[ViewItem alloc] initWithFullData:@"Телeвизор" itemPrice: @"123" itemDescription:teleDesc itemImg:teleImg]];
    [array addObject:[[ViewItem alloc] initWithFullData:@"Утюг" itemPrice: @"3434" itemDescription:ironDesc itemImg:ironImg]];
    [array addObject:[[ViewItem alloc] initWithFullData:@"Чайник" itemPrice: @"5343"itemDescription:teaPotDesc itemImg:teaPotImg]];
    [array addObject:[[ViewItem alloc] initWithFullData:@"Микроволновая печь" itemPrice: @"2453" itemDescription:microWaveDesc itemImg:microWaveImg]];
}
@end
