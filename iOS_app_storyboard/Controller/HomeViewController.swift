//
//  HomeViewController.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 17/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let transition = SlideInTransition()
   
    
    @IBOutlet weak var randomView: UIView!
    @IBOutlet weak var moveObjectView: UIView!
    @IBOutlet weak var gestureView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapMenu(_ sender: UIBarButtonItem) {
        
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else {return}
        menuViewController.didTapMenuType = { menuType in
            self.transitionToNew(menuType)
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
    
    func transitionToNew(_ menuType: MenuType){
      
        let title = String(describing: menuType).capitalized
        self.title = title
        
        switch menuType {
        case .random:
            randomView.isHidden = false
            moveObjectView.isHidden = true
            gestureView.isHidden = true
            
        case .home:
           randomView.isHidden = true
           moveObjectView.isHidden = true
           gestureView.isHidden = true
    
        case .moved:
            randomView.isHidden = true
            moveObjectView.isHidden = false
            gestureView.isHidden = true
        
            
        case .gestures:
           
            randomView.isHidden = true
            moveObjectView.isHidden = true
            gestureView.isHidden = false
            
        
        
        default:
            break
        }
    
    }

}
extension HomeViewController:UIViewControllerTransitioningDelegate{
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
    
}
