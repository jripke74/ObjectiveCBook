//
//  Document.m
//  TahDooble
//
//  Created by Jeff Ripke on 10/17/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "Document.h"

@interface Document ()

@end

@implementation Document

#pragma mark - NSDocument Overrides



- (instancetype)init {
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

+ (BOOL)autosavesInPlace {
    return YES;
}

- (NSString *)windowNibName {
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}


- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:self.tasks format:NSPropertyListXMLFormat_v1_0 options:0 error:outError];
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    self.tasks = [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListMutableContainers format:NULL error:outError];
    return (self.tasks != nil);
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [self.tasks count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    return [self.tasks objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    [self.tasks replaceObjectAtIndex:row withObject:object];
    [self updateChangeCount:NSChangeDone];
}

- (void)addTasks:(id)sender {
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    [self.tasks addObject:@"New Item"];
    [self.taskTable reloadData];
    [self updateChangeCount:NSChangeDone];
}

- (void)deleteTasks:(id)sender {
    [self removeTask:sender];
}

- (void)removeTask:(id)sender {
    if (!self.tasks) {
        return;
    }
    NSIndexSet *selectedRows = self.taskTable.selectedRowIndexes;
    [self.tasks removeObjectsAtIndexes:selectedRows];
    [self.taskTable reloadData];
    [self updateChangeCount:NSChangeDone];
}
@end
