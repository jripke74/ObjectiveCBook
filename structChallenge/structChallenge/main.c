//
//  main.c
//  structChallenge
//
//  Created by Jeff Ripke on 8/10/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    long secondsSince1970 = time(NULL);
    secondsSince1970 += 4000000;
    struct tm fourMillionSecondFromNow;
    localtime_r(&secondsSince1970, &fourMillionSecondFromNow);
    printf("The time four million seconds from now is %d-%d-%d\n", fourMillionSecondFromNow.tm_mon, fourMillionSecondFromNow.tm_mday, fourMillionSecondFromNow.tm_year + 1900);
    
    return EXIT_SUCCESS;
}
