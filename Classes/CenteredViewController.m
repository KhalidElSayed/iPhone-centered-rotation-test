#import "CenteredViewController.h"


@implementation CenteredViewController

- (void)loadView {
	[super loadView];

	self.title = @"Centering!";
	/* Try to force the parent view to be as we want it. */
	self.view.backgroundColor = [UIColor yellowColor];
	self.view.autoresizesSubviews = YES;
	self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight |
		UIViewAutoresizingFlexibleWidth;

	/* Top left blue square, for reference. */
	blue_ = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 130, 130)];
	[self.view addSubview:blue_];
	blue_.backgroundColor = [UIColor blueColor];
	[blue_ release];

	/* Create red centered rectangle. */
	red_ = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
	red_.backgroundColor = [UIColor redColor];
	red_.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin |
		UIViewAutoresizingFlexibleTopMargin |
		UIViewAutoresizingFlexibleLeftMargin |
	UIViewAutoresizingFlexibleRightMargin;
	red_.center = self.view.center;
	[self.view addSubview:red_];
	[red_ release];

	/* Add a printf like label. */
	label_ = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	label_.backgroundColor = [UIColor clearColor];
	label_.autoresizingMask = UIViewAutoresizingFlexibleHeight |
		UIViewAutoresizingFlexibleWidth;
	[self.view addSubview:label_];
	[label_ release];
}

- (void)updateLabel {
	CGRect rect = red_.frame;
	label_.text = [NSString stringWithFormat:@"Red at %0.0fx%0.0f, "
		@"size %0.0fx%0.0f", rect.origin.x, rect.origin.y,
		rect.size.width, rect.size.height];
	NSLog(@"%@", label_.text);
}

- (void)viewDidAppear:(BOOL)animated {
	[self updateLabel];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return YES;
}

- (void)dealloc {
	[super dealloc];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
	[self updateLabel];
}


@end
