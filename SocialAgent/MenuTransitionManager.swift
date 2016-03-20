//
//  MenuTransitionManager.swift
//  SocialAgent
//
//  Created by Capstone on 3/18/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//

import UIKit

class MenuTransitionManager: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate  {
    
    private var presenting = false
    
    // MARK: UIViewControllerAnimatedTransitioning protocol methods
    
    // animate a change from one viewcontroller to another
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        // get reference to our fromView, toView and the container view that we should perform the transition in
        let container = transitionContext.containerView()
        
        // create a tuple of our screens
        let screens : (from:UIViewController, to:UIViewController) = (transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!, transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!)
        
        // assign references to our menu view controller and the 'bottom' view controller from the tuple
        // remember that our menuViewController will alternate between the from and to view controller depending if we're presenting or dismissing
        let menuViewController = !self.presenting ? screens.from as! MenuViewController : screens.to as! MenuViewController
        let bottomViewController = !self.presenting ? screens.to as UIViewController : screens.from as UIViewController
        
        let menuView = menuViewController.view
        let bottomView = bottomViewController.view
        
        // prepare menu items to slide in
        if (self.presenting){
            self.offStageMenuController(menuViewController)
        }
        
        // add the both views to our view controller
        container!.addSubview(bottomView)
        container!.addSubview(menuView)
        
        let duration = self.transitionDuration(transitionContext)
        
        //perform the animation!
        UIView.animateWithDuration(duration, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: [], animations: {
            
            if (self.presenting){
                self.onStageMenuController(menuViewController) // onstage items: slide in
            }
            else {
                self.offStageMenuController(menuViewController) // offstage items: slide out
            }
            
            }, completion: { finished in
                
                // tell our transitionContext object that we've finished animating
                transitionContext.completeTransition(true)
                
                // bug: we have to manually add our 'to view' back http://openradar.appspot.com/radar?id=5320103646199808
                UIApplication.sharedApplication().keyWindow!.addSubview(screens.to.view)
                
        })
        
    }
    
    func offStage(amount: CGFloat) -> CGAffineTransform {
        return CGAffineTransformMakeTranslation(amount, 0)
    }
    
    func offStageMenuController(menuViewController: MenuViewController){
        
        menuViewController.view.alpha = 0
        
        // setup paramaters for 2D transitions for animations
        let topRowOffset  :CGFloat = 300
        let middleRowOffset :CGFloat = 150
        let bottomRowOffset  :CGFloat = 50
        
        menuViewController.postIcon.transform = self.offStage(-topRowOffset)
        menuViewController.makePost.transform = self.offStage(-topRowOffset)
        
        menuViewController.codeIcon.transform = self.offStage(-middleRowOffset)
        menuViewController.revCode.transform = self.offStage(-middleRowOffset)
        
        menuViewController.fbIcon.transform = self.offStage(-bottomRowOffset)
        menuViewController.fbButton.transform = self.offStage(-bottomRowOffset)
        
        menuViewController.pendingIcon.transform = self.offStage(topRowOffset)
        menuViewController.pendingPost.transform = self.offStage(topRowOffset)
        
        menuViewController.revIcon.transform = self.offStage(middleRowOffset)
        menuViewController.findRev.transform = self.offStage(middleRowOffset)
        
        menuViewController.twitIcon.transform = self.offStage(bottomRowOffset)
        menuViewController.twitButton.transform = self.offStage(bottomRowOffset)
        
        
        
    }
    
    func onStageMenuController(menuViewController: MenuViewController){
        
        // prepare menu to fade in
        menuViewController.view.alpha = 1
        
        menuViewController.postIcon.transform = CGAffineTransformIdentity
        menuViewController.makePost.transform = CGAffineTransformIdentity
        
        menuViewController.pendingIcon.transform = CGAffineTransformIdentity
        menuViewController.pendingPost.transform = CGAffineTransformIdentity
        
        menuViewController.codeIcon.transform = CGAffineTransformIdentity
        menuViewController.revCode.transform = CGAffineTransformIdentity
        
        menuViewController.revIcon.transform = CGAffineTransformIdentity
        menuViewController.findRev.transform = CGAffineTransformIdentity
        
        menuViewController.fbIcon.transform = CGAffineTransformIdentity
        menuViewController.fbButton.transform = CGAffineTransformIdentity
        
        menuViewController.twitIcon.transform = CGAffineTransformIdentity
        menuViewController.twitButton.transform = CGAffineTransformIdentity
        
    }
    
    // return how many seconds the transiton animation will take
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    // MARK: UIViewControllerTransitioningDelegate protocol methods
    
    // return the animataor when presenting a viewcontroller
    // rememeber that an animator (or animation controller) is any object that aheres to the UIViewControllerAnimatedTransitioning protocol
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.presenting = true
        return self
    }
    
    // return the animator used when dismissing from a viewcontroller
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.presenting = false
        return self
    }
    
}

