//
//  SnootSingle.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnootDefinitions.h"
#import "SnootProtocols.h"

@interface SnootSingle : NSObject  <SnootBaseProtocol, SnootWorkerProtocol, SnootNestedWorkflowrProtocol>

@end
