//
//  DraftGazelleView.m
//  Draft
//
//  Created by Zach Russell on 04/14/2016.
//  Copyright (c) Zach Russell. All rights reserved.
//

#import <Gazelle/Gazelle.h>
#import "DraftGazelleView.h"

@implementation DraftGazelleView

- (UIColor *)presentationBackgroundColor {
	return [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:0.2];
}

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    if (self) {
        // Custom initialisation
        CameraSessionView * camView = [[CameraSessionView alloc] initWithFrame:self.frame];
		camView.delegate = self;
		[self addSubview:camView];
    }

    return self;
}


-(void)didCaptureImage:(UIImage *)image {
  //Use the image that is received
  UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
}

- (void)handleActionForIconTap  {
	/**
	* Decide what happens when the user taps on the icon view
	* Perhaps remove the presented view?
	*/
	[Gazelle tearDownAnimated:YES];

	/**
	* Or perhaps open the application?
	*/
	[Gazelle openApplicationForBundleIdentifier:@"com.apple.camera"];
}

@end
