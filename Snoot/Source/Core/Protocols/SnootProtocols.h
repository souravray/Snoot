//
//  SnootProtocols.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//


//
// SnootWorker
//
// Controls features of text widgets (or other custom objects that might wish
// to respond to keyboard input).
//
@protocol SnootWorker <NSObject>
@required
-(void) done ;
-(void) cancel;
@end

//
// SnootNestedWorkflow
//
// Controls features of text widgets (or other custom objects that might wish
// to respond to keyboard input).
//
@protocol SnootNestedWorkflow <NSObject>
@required
-(void) next;
-(void) success;
-(void) faliure;
-(void) complete;
@end

//
// SnootBase
//
// Controls features of text widgets (or other custom objects that might wish
// to respond to keyboard input).
//
@protocol SnootBase <NSObject>
@required
-(void) addBlock:(void (^)(id<SnootWorker> worker))block;
-(void) onCompleteBlock:(void (^)(BOOL isCanceled, id<SnootNestedWorkflow> workflow))block;
-(void) onCompleteWorkflow:(id<SnootBase>) workflow;
-(void) onSuccessWorkflow:(id<SnootBase>) workflow;
-(void) onCancelWorkflow:(id<SnootBase>) workflow;
-(void) run;
@end
