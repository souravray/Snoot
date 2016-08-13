//
//  SnootSubsequent.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnootDefinitions.h"
#import "SnootProtocols.h"

@interface SnootSubsequent : NSObject<SnootBaseProtocol, SnootWorkerProtocol, SnootNestedWorkflowrProtocol>
-(instancetype) initWithCancelAction:(SNOOT_SUBSEQUENT_ON_CANCEL_ACTION) action;

@end
