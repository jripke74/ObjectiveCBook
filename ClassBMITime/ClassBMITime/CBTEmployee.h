//
//  CBTEmployeee.h
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/25/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "CBTPerson.h"
// let the compiler know about the CBTAsset class
@class CBTAsset;

@interface CBTEmployee : CBTPerson

{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
// declared in class extension in CBTEmployee.m
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAssets:(CBTAsset *)a;
- (unsigned int)valueOfAssets;

@end
