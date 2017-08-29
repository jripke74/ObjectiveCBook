//
//  CBTEmployeee.h
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/25/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "CBTPerson.h"

@interface CBTEmployee : CBTPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployment;

@end
