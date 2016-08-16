//
//  SnootSubsequent.m
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import "SnootSubsequent.h"
@interface SnootSubsequent ()
@property (nonatomic,strong) dispatch_semaphore_t notifyCompletion;
@property (nonatomic,strong) NSString *queueId;
@property (nonatomic,strong) dispatch_queue_t serialQueue;
@property (nonatomic,assign) SNOOT_SUBSEQUENT_ON_CANCEL_ACTION onCancellation;
@property (nonatomic,assign) BOOL isAnyBlockCancelled;
@end

@implementation SnootSubsequent

#pragma mark - initialization  / dealocation

-(instancetype) initWithCancelAction:(SNOOT_SUBSEQUENT_ON_CANCEL_ACTION) action {
    self=[super init];
    if(self) {
        self.isAnyBlockCancelled = NO;
        self.notifyCompletion = dispatch_semaphore_create(0);
        self.queueId = [NSString stringWithFormat:@"com.raysourav.snoot-%@", [[NSUUID UUID]UUIDString]];
        self.serialQueue = dispatch_queue_create([self.queueId UTF8String], DISPATCH_QUEUE_SERIAL);
        dispatch_suspend(self.serialQueue);
    }
    return self;
}

-(void) dealloc {
    self.notifyCompletion = nil;
    self.queueId = nil;
}

#pragma mark - setter methods

-(void) setIsAnyBlockCancelled:(BOOL)isAnyBlockCancelled {
    @synchronized (self) {
        _isAnyBlockCancelled =  _isAnyBlockCancelled || isAnyBlockCancelled;
    }
}

#pragma mark -  SnootBase methods

-(void) addBlock:(void (^)(id<SnootWorker> worker))block {
    __weak typeof(self) weakSelf = self;
    dispatch_async(self.serialQueue, ^{
        if((weakSelf.onCancellation==kSKIP_ALL_ON_CANCELLATION && !weakSelf.isAnyBlockCancelled)||
           weakSelf.onCancellation==kIGNORE_ALL_CANCELLATIONS) {
            block(weakSelf);
            dispatch_semaphore_wait(weakSelf.semaphore, DISPATCH_TIME_FOREVER);
        }
    });
}

-(void) onCompleteBlock:(void (^)(BOOL isCanceled, id<SnootNestedWorkflow> workflow))block {
    __weak typeof(self) weakSelf = self;
    dispatch_async(self.serialQueue, ^{
        block(weakSelf.isAnyBlockCancelled, weakSelf);
    });
}

-(void) onCompleteWorkflow:(id<SnootBase>) workflow{
    
}

-(void) onSuccessWorkflow:(id<SnootBase>) workflow {
    
}

-(void) onCancelWorkflow:(id<SnootBase>) workflow {
    
}

-(void) run{
    dispatch_resume(self.serialQueue);
}


#pragma mark -  SnootWorker methods

-(void) done {
    self.isAnyBlockCancelled = NO;
    dispatch_semaphore_signal(self.notifyCompletion);
}

-(void) cancel {
    self.isAnyBlockCancelled = YES;
    dispatch_semaphore_signal(self.notifyCompletion);
}


#pragma mark -  SnootNestedWorkflow methods

-(void) next {
    
}

-(void) success {
    
}

-(void) faliure {
    
}

-(void) complete {
    
}

@end
