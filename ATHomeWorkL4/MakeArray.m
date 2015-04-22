//
//  MakeArray.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 20.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "MakeArray.h"

@implementation MakeArray


- (void) makeArrayTech{
    NSMutableArray *techArray = [[NSMutableArray alloc] init];
    [ViewItem fillArrayTech:techArray];
    [self.delegate makeArrayTechReady:self array:techArray];
    
}

- (void) makeArrayMusic {
    NSMutableArray *musicArray = [[NSMutableArray alloc] init];
    [ViewItem fillArrayMusic:musicArray];
    [self.delegate makeArrayMusicReady:self array:musicArray];
}

- (void) makeArrayTechNotification{
    NSMutableArray *techArray = [[NSMutableArray alloc] init];
    [ViewItem fillArrayTech:techArray];
    NSDictionary *dict =  [[NSDictionary alloc] initWithObjectsAndKeys:techArray, KEY_FOR_ARRAY, nil];
    [NSNotificationCenter callNotificationWithData:NOTIF_ARRAY userInfoDictionary:dict];
    
}

- (void) makeArrayMusicNotification {
    NSMutableArray *musicArray = [[NSMutableArray alloc] init];
    [ViewItem fillArrayMusic:musicArray];
    NSDictionary *dict =  [[NSDictionary alloc] initWithObjectsAndKeys:musicArray, KEY_FOR_ARRAY, nil];
    [NSNotificationCenter callNotificationWithData:NOTIF_ARRAY userInfoDictionary:dict];
}


@end
