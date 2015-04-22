//
//  ViewItemMusic.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 13.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "ViewItemMusic.h"

@implementation ViewItemMusic

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
   [array removeAllObjects];
    NSString *syncDesc = @"Электронный музыкальный инструмент, создающий (синтезирующий) звук при помощи одного или нескольких генераторов звуковых волн. Требуемое звучание достигается за счёт изменения свойств электрического сигнала (в аналоговых синтезаторах) или же методом настройки параметров центрального процессора (в цифровых синтезаторах).";
    NSString *drumDesc = @"Набор барабанов, тарелок и других ударных инструментов, приспособленный для удобной игры музыканта-барабанщика. Обычно используется в джазе, роке и поп-музыке.";
    NSString *guitarDesc = @"Cтрунный щипковый музыкальный инструмент. Применяется в качестве аккомпанирующего или сольного инструмента во многих стилях и направлениях музыки, среди которых романс, блюз, кантри, фламенко, рок, метал, джаз. Изобретённая в XX веке электрическая гитара оказала сильное влияние на массовую культуру.";
    NSString *tubeDesc = @"Медный духовой музыкальный инструмент альтово-сопранового регистра, самый высокий по звучанию среди медных духовых.В качестве сигнального инструмента натуральная труба использовалась с древнейших времён, примерно с XVII века вошла в состав оркестра. С изобретением механизма вентилей труба получила полный хроматический звукоряд и с середины XIX века стала полноценным инструментом классической музыки. Инструмент обладает ярким, блестящим тембром, используется как сольный инструмент, в симфоническом и духовом оркестрах, а также в джазе и других жанрах.";
    
    UIImage *syncImg = [UIImage imageNamed:@"Синтезатор"];
    UIImage *drumImg = [UIImage imageNamed:@"Барабаны"];
    UIImage *guitarImg = [UIImage imageNamed:@"Гитара"];
    UIImage *tubeImg = [UIImage imageNamed:@"Труба"];
    
    [array addObject:[[ViewItemMusic alloc] initWithFullData:@"Синтезатор" itemPrice: @"12.3" itemDescription:syncDesc itemImg:syncImg]];
    [array addObject:[[ViewItemMusic alloc] initWithFullData:@"Барабаны" itemPrice: @"34.34" itemDescription:drumDesc itemImg:drumImg]];
    [array addObject:[[ViewItemMusic alloc] initWithFullData:@"Гитары" itemPrice: @"534.3"itemDescription:guitarDesc itemImg:guitarImg]];
    [array addObject:[[ViewItemMusic alloc] initWithFullData:@"Труба" itemPrice: @"245.3" itemDescription:tubeDesc itemImg:tubeImg]];
}

@end
