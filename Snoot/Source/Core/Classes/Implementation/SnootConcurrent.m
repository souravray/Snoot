//
//  SnootConcurrent.m
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import "SnootConcurrent.h"
@interface SnootConcurrent ()

@end

@implementation SnootConcurrent

#pragma mark - initialization / dealocation

-(instancetype) init {
    self=[super init];
    return self;
}

-(void) dealloc {
    
}

#pragma mark -  SnootBase methods

-(void) addBlock:(void (^)(id<SnootWorker> worker))block {
    
}

-(void) onCompleteBlock:(void (^)(BOOL isCanceled, id<SnootNestedWorkflow> workflow))block {
}

-(void) onCompleteWorkflow:(id<SnootBase>) workflow{
    
}

-(void) onSuccessWorkflow:(id<SnootBase>) workflow {
    
}

-(void) onCancelWorkflow:(id<SnootBase>) workflow {
    
}

-(void) run{
    
}


#pragma mark -  SnootWorker methods

-(void) done {
    
}

-(void) cancel {
    
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
