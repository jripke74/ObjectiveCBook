//
//  main.c
//  UserInputChallenge
//
//  Created by Jeff Ripke on 8/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <stdio.h>
#import <stdlib.h>
#import <readline/readline.h>

int main(int argc, const char * argn[]) {
    printf("Where should I start counting? ");
    const char *numberString = readline(NULL);
    int number = atoi(numberString);
    int i;
    for (i = number; i > 0; i -= 3) {
        if (i % 5 == 0) {
            printf("Found one!\n");
        } else {
            printf("%d\n", i);
        }
    }
    return EXIT_SUCCESS;
}
