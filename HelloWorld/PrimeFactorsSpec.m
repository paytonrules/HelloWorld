#import "OCDSpec/OCDSpec.h"
#import "PrimeFactors.h"

CONTEXT(PrimeFactors)
{
    describe(@"Prime Factors", 
             it(@"factors 2", 
                ^{
                    NSArray *factors = [NSArray arrayWithObject:[NSNumber numberWithInt:2]];
                    
                    [expect([PrimeFactors of:2]) toBeEqualTo: factors];
                }),
             it(@"factors 3",
                ^{
                    NSArray *factors = [NSArray arrayWithObject:[NSNumber numberWithInt:3]];
                    
                    [expect([PrimeFactors of:3]) toBeEqualTo: factors];
                }),
             
             it(@"factors 4",
                ^{
                    NSArray *factors = [NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:2], nil];
                    
                    [expect([PrimeFactors of:4]) toBeEqualTo: factors];
                }),
             it(@"factors 5",
                ^{
                    NSArray *factors = [NSArray arrayWithObjects:[NSNumber numberWithInt:5], nil];
                    
                    [expect([PrimeFactors of:5]) toBeEqualTo: factors];
                }),
             it(@"factors 6",
                ^{
                    NSArray *factors = [NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:3], nil];
                    
                    [expect([PrimeFactors of:6]) toBeEqualTo: factors];
                }),
             it(@"factors 7",
                ^{
                    NSArray *factors = [NSArray arrayWithObjects:[NSNumber numberWithInt:7], nil];
                    
                    [expect([PrimeFactors of:7]) toBeEqualTo: factors];
                }),
             it(@"factors 8",
                ^{
                    NSArray *factors = [NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:2], [NSNumber numberWithInt:2], nil];
                    
                    [expect([PrimeFactors of:8]) toBeEqualTo: factors];
                }),
             it(@"factors 9",
                ^{
                    NSArray *factors = [NSArray arrayWithObjects:[NSNumber numberWithInt:3], [NSNumber numberWithInt:3], nil];
                    
                    [expect([PrimeFactors of:9]) toBeEqualTo: factors];                    
                }),
             it(@"factors 2^19-1",
                ^{
                    NSArray *factors = [NSArray arrayWithObjects:[NSNumber numberWithInt:(pow(2,19)-1)], nil];
                    
                    [expect([PrimeFactors of:(pow(2,19)-1)]) toBeEqualTo: factors];                    
                }),
             nil);
}