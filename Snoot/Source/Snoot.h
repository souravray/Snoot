//
//  Snoot.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnootDefinitions.h"
#import "SnootProtocols.h"


@interface Snoot : NSObject

+(id<SnootBase>) subsequent;
+(id<SnootBase>) subsequentWithCancelAction:(SNOOT_SUBSEQUENT_ON_CANCEL_ACTION) action;
+(id<SnootBase>) concurrent;
+(id<SnootBase>) singleWithBlock:(void (^)(id<SnootWorker> worker))block;

@end
