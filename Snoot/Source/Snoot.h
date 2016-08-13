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

+(id<SnootBaseProtocol>) subsequent;
+(id<SnootBaseProtocol>) subsequentWithCancelAction:(SNOOT_SUBSEQUENT_ON_CANCEL_ACTION) action;
+(id<SnootBaseProtocol>) concurrent;
+(id<SnootBaseProtocol>) singleWithBlock:(void (^)(id<SnootWorkerProtocol> worker))block;

@end
