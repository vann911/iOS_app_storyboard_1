//
//  GestureViewController.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 18/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    @IBOutlet weak var SwipeAreaView: UIView!
    
    @IBOutlet weak var GestureStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
              
        swipeLeft.direction = .left
        swipeRight.direction = .right
        swipeUp.direction = .up
        swipeDown.direction = .down
              
        SwipeAreaView.addGestureRecognizer(swipeLeft)
        SwipeAreaView.addGestureRecognizer(swipeRight)
        SwipeAreaView.addGestureRecognizer(swipeDown)
        SwipeAreaView.addGestureRecognizer(swipeUp)
    }
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
        
        if (sender.direction == .left) {
            GestureStatusLabel.text = "Left Swipe"
        }
        if (sender.direction == .right) {
             GestureStatusLabel.text = "Right Swipe"
        }
        if (sender.direction == .up){
             GestureStatusLabel.text = "Upward Swipe"
        }
        if (sender.direction == .down){
             GestureStatusLabel.text = "Downward Swipe"
        }
        
    }
}
