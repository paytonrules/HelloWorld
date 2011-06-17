#import "OCDSpec/OCDSpec.h"
#import "HelloWorldAppDelegate.h"

CONTEXT(HelloWorldAppDelegate)
{
    describe(@"Clicking the button and having it show an alert",
             it(@"creates a UIAlertView with the outlet text on Say", 
                ^{
                    HelloWorldAppDelegate *delegate = [[[HelloWorldAppDelegate alloc] init] autorelease];
                    
                    delegate.message = [[[UITextField alloc] init] autorelease];
                    delegate.voice = [[[UILabel alloc] init] autorelease];
                    delegate.message.text = @"Hey there";
                    
                    [delegate say];
                    
                    [expect(delegate.voice.text) toBeEqualTo: @"Hey there"];
                }),
             nil
             );
}
