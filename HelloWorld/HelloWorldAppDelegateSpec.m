#import "OCDSpec/OCDSpec.h"
#import "HelloWorldAppDelegate.h"

@interface MockTextField : UITextField
{
    NSNumber *calledresignFirstResponder;
}

@property(nonatomic, readonly) NSNumber *calledresignFirstResponder;
-(BOOL) resignFirstResponder;

@end

@implementation MockTextField

@synthesize calledresignFirstResponder;

-(BOOL) resignFirstResponder
{
    calledresignFirstResponder = [NSNumber numberWithBool:TRUE];
    return TRUE;
}

@end

CONTEXT(HelloWorldAppDelegate)
{
    __block HelloWorldAppDelegate *delegate;
    __block MockTextField *textField;
    
    describe(@"Prime Factors UI",
             it(@"Should remove the keyboard when you generate primes", 
                ^{
                    delegate = [[[HelloWorldAppDelegate alloc] init] autorelease];
                    textField = [[[MockTextField alloc] init] autorelease];
                    delegate.integerField = textField;
                    
                    [delegate generatePrimes];
                    
                    [expect(textField.calledresignFirstResponder) toBeEqualTo:[NSNumber numberWithBool:TRUE]];
                }),
             
             it(@"should calculate the primes and write that to the output", 
                ^{
                    delegate = [[[HelloWorldAppDelegate alloc] init] autorelease];
                    textField = [[[MockTextField alloc] init] autorelease];
                    
                    delegate.integerField = textField;
                    delegate.resultField = [[[UILabel alloc] init] autorelease];
                    
                    delegate.integerField.text = @"4";
                    
                    [delegate generatePrimes];
                    
                    [expect(delegate.resultField.text) toBeEqualTo:@"2,2"];
                }),
             nil
             );
}
