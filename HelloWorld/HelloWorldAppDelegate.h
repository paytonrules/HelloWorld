//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by Eric Smith on 6/17/11.
//  Copyright 2011 8th Light. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertFactory.h"

@interface HelloWorldAppDelegate : NSObject <UIApplicationDelegate, UITextFieldDelegate> {
    UITextField *integerField;
    UILabel     *resultField;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITextField *integerField;
@property (nonatomic, retain) IBOutlet UILabel *resultField;
-(IBAction) generatePrimes;

@end


