//
//  CBTAsset.h
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/31/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CBTEmployee;

@interface CBTAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) CBTEmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end
