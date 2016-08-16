//
//  SnootConcurrent.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnootLongLivedObject.h"
#import "SnootDefinitions.h"
#import "SnootProtocols.h"

@interface SnootConcurrent : SnootLongLivedObject <SnootBase, SnootWorker, SnootNestedWorkflow>

@end
