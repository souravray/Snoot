//
//  SnootSingle.m
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import "SnootSingle.h"

@implementation SnootSingle

#pragma mark - initialization

-(instancetype) initWithBlock:(void (^)(id<SnootWorkerProtocol> worker))block {
    self=[super init];
    if(self) {
        [self addBlock:block];
    }
    return self;
}

#pragma mark -  SnootBaseProtocol methods

-(void) addBlock:(void (^)(id<SnootWorkerProtocol> worker))block {
    
}

-(void) onCompleteBlock:(void (^)(BOOL isCanceled, id<SnootNestedWorkflowrProtocol> workflow))block {
}

-(void) onCompleteWorkflow:(id<SnootBaseProtocol>) workflow{
    
}

-(void) onSuccessWorkflow:(id<SnootBaseProtocol>) workflow {
    
}

-(void) onCancelWorkflow:(id<SnootBaseProtocol>) workflow {
    
}

-(void) run{
    
}


#pragma mark -  SnootWorkerProtocol methods

-(void) done {
    
}

-(void) cancel {
    
}


#pragma mark -  SnootNestedWorkflowrProtocol methods

-(void) next {
    
}

-(void) success {
    
}

-(void) faliure {
    
}

-(void) complete {
    
}



@end
