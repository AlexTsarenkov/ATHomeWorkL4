//
//  NSNotificationCenter+NotificationsOptions.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 21.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSNotificationCenter (NotificationsOptions)

+ (void) createNotification:(NSString *) notifName selector:(SEL) methodSelector object:(UIViewController *) obj;

+ (void) removeNotification;

+ (void) callNotification: (NSString *) notifName;

+ (void) callNotificationWithData: (NSString *) notifName userInfoDictionary:(NSDictionary*) dict;
@end
