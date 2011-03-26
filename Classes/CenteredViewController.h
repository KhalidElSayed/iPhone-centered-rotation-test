#import <UIKit/UIKit.h>

@interface CenteredViewController : UIViewController
{
	UIView *blue_, *red_;
	UILabel *label_;
	BOOL fix_rotation_;
}

@property (nonatomic, assign) BOOL fix_rotation;

@end
