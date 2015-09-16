//
//  TouchPopUpViewController.m
//
//  Created by Mokhlas Hussein on 16/09/15.
//  Copyright © 2015 iMokhles. All rights reserved.
//

#import "TouchPopUp.h"

@interface TouchPopUp () <UIPopoverPresentationControllerDelegate>

@end

@implementation TouchPopUp

+ (void)presentInViewController:(UIViewController *)vc fromView:(UIView *)view withDirection:(UIPopoverArrowDirection)direction forURL:(NSURL*)url {
    static TouchPopUp *sharedInstance = nil;
    sharedInstance = [[[self class] alloc] init];
    sharedInstance.preferredContentSize = CGSizeMake(vc.view.frame.size.width - 20, 300);
    sharedInstance.popoverPresentationController.sourceView = view;
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, vc.view.frame.size.width - 20, 300)];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    [sharedInstance.view addSubview:webView];
    sharedInstance.popoverPresentationController.sourceRect = CGRectMake(0, 0, vc.view.frame.size.width - 20, 50);
    sharedInstance.popoverPresentationController.permittedArrowDirections = direction;
    [vc presentViewController:sharedInstance animated:YES completion:nil];
}

- (id)init {
    if (self == [super initWithNibName:nil bundle:nil]) {
        self.modalPresentationStyle = UIModalPresentationPopover;
        self.popoverPresentationController.delegate = self;
    }
    return self;
}

-(UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller{
    return UIModalPresentationNone;
}

@end
