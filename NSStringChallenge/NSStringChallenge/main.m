//
//  main.m
//  NSStringChallenge
//
//  Created by Jeff Ripke on 8/14/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int maint(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Where should I start counting? ");
        //const char *numberString = readline(NULL);
        NSString *numberString = [numberString stringWithUTF8String:readline(NULL)];
        int number = atoi(numberString);
        int i;
        for (i = number; i > 0; i -= 3) {
            if (i % 5 == 0) {
                printf("Found one!\n");
            } else {
                printf("%d\n", i);
            }
        }
    }
    return EXIT_SUCCESS;
}
