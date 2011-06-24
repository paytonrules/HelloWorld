//
//  PrimeFactors.m
//  HelloWorld
//
//  Created by Eric Smith on 6/17/11.
//  Copyright 2011 8th Light. All rights reserved.
//

#import "PrimeFactors.h"


@implementation PrimeFactors

+(NSArray *) of:(long long)n
{
    NSMutableArray *factors = [NSMutableArray array];
    long long divisor = 2;
    while (n > 1) {
        while ((n % divisor) == 0) {
            [factors addObject:([NSNumber numberWithInt:(divisor)])];
            n /= divisor;
        } 
        if (divisor > sqrt(n)) {
            divisor = n;
        }
        else {
            divisor += 1;  
        }
    }
    
    return factors;
}

@end
