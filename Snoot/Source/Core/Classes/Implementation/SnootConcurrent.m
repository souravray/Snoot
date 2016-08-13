//
//  SnootConcurrent.m
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import "SnootConcurrent.h"

@implementation SnootConcurrent

#pragma mark - initialization

-(instancetype) init {
    self=[super init];
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
