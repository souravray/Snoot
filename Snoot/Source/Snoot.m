//
//  Snoot.m
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import "Snoot.h"
#import "SnootSubsequent.h"
#import "SnootConcurrent.h"
#import "SnootSingle.h"

@implementation Snoot

+(id<SnootBase>) subsequent {
    return [[SnootSubsequent alloc] initWithCancelAction: kSKIP_ALL_ON_CANCELLATION];
}

+(id<SnootBase>) subsequentWithCancelAction:(SNOOT_SUBSEQUENT_ON_CANCEL_ACTION)action {
    return [[SnootSubsequent alloc] initWithCancelAction: action];
}

+(id<SnootBase>) concurrent {
    return [[SnootConcurrent alloc] init];
}

+(id<SnootBase>) singleWithBlock:(void (^)(id<SnootWorker> worker))block {
    return [[SnootSingle alloc] initWithBlock:block];
}


@end
