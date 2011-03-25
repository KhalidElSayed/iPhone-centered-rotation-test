#import "CenteredViewController.h"


@implementation CenteredViewController

- (void)loadView {
	[super loadView];
	
	self.view.backgroundColor = [UIColor yellowColor];
	self.view.autoresizesSubviews = YES;
	self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight |
	UIViewAutoresizingFlexibleWidth;
	self.title = @"Centering!";
	/* Top left blue square, for reference. */
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 130, 130)];
	[self.view addSubview:view];
	view.backgroundColor = [UIColor blueColor];
	[view release];
	
	/* Create red centered rectangle. */
	view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
	view.backgroundColor = [UIColor redColor];
	view.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin |
		UIViewAutoresizingFlexibleTopMargin |
		UIViewAutoresizingFlexibleLeftMargin |
	UIViewAutoresizingFlexibleRightMargin;
	view.center = self.view.center;
	[self.view addSubview:view];
	[view release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
