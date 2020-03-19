//
//  SlideInTransition.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 18/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class SlideInTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    
    var isPresenting = false
    let dimmingView = UIView()
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
       guard let toViewController = transitionContext.viewController(forKey: .to),
        let fromViewController = transitionContext.viewController(forKey: .from) else {return}
        
        let containerView = transitionContext.containerView
        
        let finalWidth = toViewController.view.bounds.width * 0.8
        let finalHeight = toViewController.view.bounds.height
        
        
        if isPresenting{
            //Add dimmming effect
            dimmingView.backgroundColor = .black
            dimmingView.alpha = 0.0
            containerView.addSubview(dimmingView)
            dimmingView.frame = containerView.bounds
            
            //add menu view controller to the container
            containerView.addSubview(toViewController.view)
            
            //Init frame off the screen
            toViewController.view.frame = CGRect(x: -finalWidth, y: 0, width: finalWidth, height: finalHeight)
        }
        
        //animate on screen
        let transform = {
            self.dimmingView.alpha = 0.8 //dimming the background
            toViewController.view.transform = CGAffineTransform(translationX: finalWidth, y: 0)
        }
        
        //animate off the screen
        let identity = {
            self.dimmingView.alpha = 0.0//return to original state
            fromViewController.view.transform = .identity
        }
        
        
        //This is the animation configuration
        let duration = transitionDuration(using: transitionContext)
        let isCancelled = transitionContext.transitionWasCancelled
        
        UIView.animate(withDuration: duration, animations: {
            self.isPresenting ? transform() : identity() //isPresenting? if yes transform() else identity()
        }) { (Bool) in
            transitionContext.completeTransition(!isCancelled)
        }
    }
    

}
