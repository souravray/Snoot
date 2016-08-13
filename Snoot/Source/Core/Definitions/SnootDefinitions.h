//
//  SnootDefinitions.h
//  Snoot
//
//  Created by Sourav Ray on 8/13/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#ifndef SnootDefinitions_h
#define SnootDefinitions_h


typedef enum {
    kSKIP_ALL_ON_CANCELLATION,
    kSKIP_ONLY_NEXT_ON_CANCELLATION,
    kIGNORE_ALL_CANCELLATIONS
} SNOOT_SUBSEQUENT_ON_CANCEL_ACTION;

FOUNDATION_EXPORT NSString *const kSNOOT_SERIAL_QUEUE_PREFIX;
FOUNDATION_EXPORT NSString *const kSNOOT_CONCURRENT_QUEUE_PREFIX;
FOUNDATION_EXPORT NSString *const kSNOOT_NOTIFICATION_PREFIX;

#endif /* SnootDefinitions_h */
