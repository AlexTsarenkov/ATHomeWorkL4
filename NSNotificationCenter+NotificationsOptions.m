//
//  NSNotificationCenter+NotificationsOptions.m
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 21.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import "NSNotificationCenter+NotificationsOptions.h"

@implementation NSNotificationCenter (NotificationsOptions)

+ (void) createNotification:(NSString *) notifName selector:(SEL) methodSelector object:(UIViewController *) obj {
    
    [[NSNotificationCenter defaultCenter] addObserver:obj selector:methodSelector name:notifName object:nil];
    
}

+ (void) removeNotification {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

+ (void) callNotification: (NSString *) notifName {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:notifName object:nil];
}

+ (void) callNotificationWithData: (NSString *) notifName userInfoDictionary:(NSDictionary*) dict {
    [[NSNotificationCenter defaultCenter] postNotificationName:notifName object:nil userInfo:dict];
}
@end
