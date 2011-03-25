#import "landscape_centering_bugAppDelegate.h"
#import "RootViewController.h"


@implementation landscape_centering_bugAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

