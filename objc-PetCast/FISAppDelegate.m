//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISDog.h"
#import "FISPet.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISDog *dog = [[FISDog alloc] init];
    NSLog(@"%@", [dog makeASound]);
    NSLog(@"%@", [dog assaultTheMailman]);
    
    FISPet *pet = (FISPet *)dog;
    NSLog(@"%@", [pet makeASound]);
    NSLog(@"%@", [(FISDog *)pet assaultTheMailman]);

    FISPet *neoPet = [[FISPet alloc] init];
    NSLog(@"%@", [(FISDog *)neoPet makeASound]);
    //NSLog(@"%@", [(FISDog *)neoPet assaultTheMailman]);
    
    return YES;
}

@end
