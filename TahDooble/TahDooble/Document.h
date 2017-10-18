//
//  Document.h
//  TahDooble
//
//  Created by Jeff Ripke on 10/17/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTasks:(id)sender;

@end
