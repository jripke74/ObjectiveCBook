//
//  ViewController.h
//  iTahDooble
//
//  Created by Jeff Ripke on 10/13/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
- (void)addTask:(id)sender;

@end
