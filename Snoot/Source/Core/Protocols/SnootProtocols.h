//
//  SnootProtocols.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//


//
// SnootWorkerProtocol
//
// Controls features of text widgets (or other custom objects that might wish
// to respond to keyboard input).
//
@protocol SnootWorkerProtocol <NSObject>
@required
-(void) done ;
-(void) cancel;
@end

//
// SnootNestedWorkflowrProtocol
//
// Controls features of text widgets (or other custom objects that might wish
// to respond to keyboard input).
//
@protocol SnootNestedWorkflowrProtocol <NSObject>
@required
-(void) next;
-(void) success;
-(void) faliure;
-(void) complete;
@end

//
// SnootBaseProtocol
//
// Controls features of text widgets (or other custom objects that might wish
// to respond to keyboard input).
//
@protocol SnootBaseProtocol <NSObject>
@required
-(void) addBlock:(void (^)(id<SnootWorkerProtocol> worker))block;
-(void) onCompleteBlock:(void (^)(BOOL isCancelled, id<SnootNestedWorkflowrProtocol> workflow))block;
-(void) onCompleteWorkflow:(id<SnootBaseProtocol>) workflow;
-(void) onSuccessWorkflow:(id<SnootBaseProtocol>) workflow;
-(void) onCancellWorkflow:(id<SnootBaseProtocol>) workflow;
-(void) run;
@end
