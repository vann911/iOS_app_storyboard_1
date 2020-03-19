//
//  RandomViewController.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 18/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var lbl_num1: UILabel!
    @IBOutlet weak var lbl_num2: UILabel!
    @IBOutlet weak var lbl_num3: UILabel!
    @IBOutlet weak var lbl_num4: UILabel!
    @IBOutlet weak var lbl_num5: UILabel!
    @IBOutlet weak var lbl_num6: UILabel!
    @IBOutlet weak var lbl_num7: UILabel!
    @IBOutlet weak var lbl_num8: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // -------- for labels borders
        lbl_num1.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num1.layer.borderWidth = 3.0
        
        lbl_num2.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num2.layer.borderWidth = 3.0
        
        lbl_num3.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num3.layer.borderWidth = 3.0
        
        lbl_num4.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num4.layer.borderWidth = 3.0
        
        lbl_num5.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num5.layer.borderWidth = 3.0
        
        lbl_num6.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num6.layer.borderWidth = 3.0
        
        lbl_num7.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num7.layer.borderWidth = 3.0
        
        lbl_num8.layer.borderColor = UIColor.darkGray.cgColor
        lbl_num8.layer.borderWidth = 3.0
        
        
        
    }
    
    @IBAction func btn_randomized(_ sender: Any) {
        var arr = [Int]()
        arr += 1...8
        
        arr.shuffle()
        lbl_num1.text = String(arr[0])
        lbl_num2.text = String(arr[1])
        lbl_num3.text = String(arr[2])
        lbl_num4.text = String(arr[3])
        lbl_num5.text = String(arr[4])
        lbl_num6.text = String(arr[5])
        lbl_num7.text = String(arr[6])
        lbl_num8.text = String(arr[7])
        
        
    }
    
}
