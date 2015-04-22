//
//  MakeArray.h
//  ATHomeWorkL4
//
//  Created by Alexey Tsarenkov on 20.04.15.
//  Copyright (c) 2015 alextsarenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewItem.h"


@protocol MakeArrayDelegate;

@interface MakeArray : NSObject

@property(weak,nonatomic) id <MakeArrayDelegate> delegate;

- (void) makeArrayTech;
- (void) makeArrayMusic;
- (void) makeArrayTechNotification;
- (void) makeArrayMusicNotification;

@end

@protocol MakeArrayDelegate <NSObject>

@required
- (void) makeArrayTechReady:(MakeArray*) obj array:(NSMutableArray*) techArray;
- (void) makeArrayMusicReady:(MakeArray*) obj array:(NSMutableArray*) musicArray;
@end