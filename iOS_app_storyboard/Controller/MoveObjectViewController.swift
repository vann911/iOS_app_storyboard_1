//
//  SwipesViewController.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 18/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class MoveObjectViewController: UIViewController {

    @IBOutlet weak var MoveAreaView: UIView!
    
    @IBOutlet weak var SmileyObject: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureHandler(_:)))
        SmileyObject.addGestureRecognizer(panGesture)
        
    }
    
    @objc func panGestureHandler(_ panGesture: UIPanGestureRecognizer){
        
        let translation = panGesture.translation(in: view)
        guard let gestureView = panGesture.view else {
          return
        }
        
        
        gestureView.center = CGPoint(x: gestureView.center.x + translation.x, y: gestureView.center.y + translation.y)
              panGesture.setTranslation(.zero, in: view)
        
    }
    
   

}
