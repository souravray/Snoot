//
//  SnootSingle.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnootLongLivedObject.h"
#import "SnootDefinitions.h"
#import "SnootProtocols.h"

@interface SnootSingle : SnootLongLivedObject  <SnootBase, SnootWorker, SnootNestedWorkflow>

-(instancetype) initWithBlock:(void (^)(id<SnootWorker> worker))block;

@end
