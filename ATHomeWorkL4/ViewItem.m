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

+ (void) fillArrayTech: (NSMutableArray *) array{
    [array removeAllObjects];
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

+ (void) fillArrayMusic: (NSMutableArray *) array{
    [array removeAllObjects];
    NSString *syncDesc = @"Электронный музыкальный инструмент, создающий (синтезирующий) звук при помощи одного или нескольких генераторов звуковых волн. Требуемое звучание достигается за счёт изменения свойств электрического сигнала (в аналоговых синтезаторах) или же методом настройки параметров центрального процессора (в цифровых синтезаторах).";
    NSString *drumDesc = @"Набор барабанов, тарелок и других ударных инструментов, приспособленный для удобной игры музыканта-барабанщика. Обычно используется в джазе, роке и поп-музыке.";
    NSString *guitarDesc = @"Cтрунный щипковый музыкальный инструмент. Применяется в качестве аккомпанирующего или сольного инструмента во многих стилях и направлениях музыки, среди которых романс, блюз, кантри, фламенко, рок, метал, джаз. Изобретённая в XX веке электрическая гитара оказала сильное влияние на массовую культуру.";
    NSString *tubeDesc = @"Медный духовой музыкальный инструмент альтово-сопранового регистра, самый высокий по звучанию среди медных духовых.В качестве сигнального инструмента натуральная труба использовалась с древнейших времён, примерно с XVII века вошла в состав оркестра. С изобретением механизма вентилей труба получила полный хроматический звукоряд и с середины XIX века стала полноценным инструментом классической музыки. Инструмент обладает ярким, блестящим тембром, используется как сольный инструмент, в симфоническом и духовом оркестрах, а также в джазе и других жанрах.";
    
    UIImage *syncImg = [UIImage imageNamed:@"Синтезатор"];
    UIImage *drumImg = [UIImage imageNamed:@"Барабаны"];
    UIImage *guitarImg = [UIImage imageNamed:@"Гитара"];
    UIImage *tubeImg = [UIImage imageNamed:@"Труба"];
    
    [array addObject:[[ViewItem alloc] initWithFullData:@"Синтезатор" itemPrice: @"12.3" itemDescription:syncDesc itemImg:syncImg]];
    [array addObject:[[ViewItem alloc] initWithFullData:@"Барабаны" itemPrice: @"34.34" itemDescription:drumDesc itemImg:drumImg]];
    [array addObject:[[ViewItem alloc] initWithFullData:@"Гитары" itemPrice: @"534.3"itemDescription:guitarDesc itemImg:guitarImg]];
    [array addObject:[[ViewItem alloc] initWithFullData:@"Труба" itemPrice: @"245.3" itemDescription:tubeDesc itemImg:tubeImg]];
}

@end

