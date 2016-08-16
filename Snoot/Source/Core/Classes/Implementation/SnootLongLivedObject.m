//
//  SnootLongLivedObject.m
//  Snoot-first-cut
//
//  Created by Sourav Ray on 8/16/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import "SnootLongLivedObject.h"

@interface SnootLongLivedObject ()
@property (nonatomic,strong) dispatch_semaphore_t notifyReadyForTermination;
@end


@implementation SnootLongLivedObject

-(instancetype) init {
    
    self = [super init];
    self.notifyReadyForTermination = dispatch_semaphore_create(0);
    // To ensure the Snoot object is alive through out
    // the lifecyle of the workflow, we maintain a strong
    // reference of the object in a headless block which
    // waits for the termination semaphore to be signalled.
    // Once the block scope is over there will be no strong
    // reference of the Snoot object (unless developer has
    // maintained any in his/her code) and the object will
    // be released. The pitfall of this desigin is that in
    // case of custom onComplete block, the developer needs
    // to explicitly call a SnootNestedWorkflow method to
    // release the object.
    __block typeof(self) blockSelf = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND
                                             , 0), ^{
        dispatch_semaphore_wait(blockSelf.notifyReadyForTermination, DISPATCH_TIME_FOREVER);
        
    });
    
    return self;
}

-(void) dealloc {
    NSLog(@"really");
}

-(void) notifyTermination {
    dispatch_semaphore_signal(self.notifyReadyForTermination);
}


@end
