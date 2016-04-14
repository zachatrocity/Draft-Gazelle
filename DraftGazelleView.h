//
//  DraftGazelleView.h
//  Draft
//
//  Created by Zach Russell on 04/14/2016.
//  Copyright (c) Zach Russell. All rights reserved.
//
#import "CameraSessionView.h"


@interface DraftGazelleView : UIView <CACameraSessionDelegate>
/**
* If you need to change the background color of the block view
* this is where you would change it
*/
- (UIColor *)presentationBackgroundColor;
-(void)didCaptureImage:(UIImage *)image;
/**
* This is called after a user taps on the presented views icon image
* You don't need to do anything except tell it what to do
*/
- (void)handleActionForIconTap;
@end
