//
//  TouchPopUp.h
//
//  Created by Mokhlas Hussein on 16/09/15.
//  Copyright © 2015 iMokhles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchPopUp : UIViewController
+ (void)presentInViewController:(UIViewController *)vc fromView:(UIView *)view withDirection:(UIPopoverArrowDirection)direction forURL:(NSURL*)url;
@end
