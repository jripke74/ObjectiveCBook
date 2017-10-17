//
//  ViewController.m
//  iTahDooble
//
//  Created by Jeff Ripke on 10/13/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

NSString *DocPath() {
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

@interface ViewController ()

@end

@implementation ViewController

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self.tasks writeToFile:DocPath() atomically:YES];
}

- (void)loadView {
    self.tasks = [NSMutableArray array];
    
    CGRect frame = [UIScreen mainScreen].bounds;
    MyView *backgroundView = [[MyView alloc] initWithFrame:frame];
    
    // Define frame rectangles
    CGRect tableFrame = CGRectMake(0, 80, frame.size.width, frame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Table view
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.taskTable.dataSource = self;
    
    // Tell table view which class to instantiate
    // whenever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    // Create task field
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap insert";
    // Create the Button
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    // Give button title
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    // Set target and action
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    [backgroundView addSubview:self.taskTable];
    [backgroundView addSubview:self.taskField];
    [backgroundView addSubview:self.insertButton];
    self.view = backgroundView;
}

- (void)addTask:(id)sender {
    NSString *text = [self.taskField text];
    // quit here if taskField is empty
    if ([text length] == 0) {
        return;
    }
    [self.tasks addObject:text];
    [self.taskTable reloadData];
    // clear out the text field
    [self.taskField setText:@""];
    // dismiss the keyboard
    [self.taskField resignFirstResponder];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    return c;
}
@end
