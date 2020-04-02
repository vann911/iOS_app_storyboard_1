//
//  MenuViewController.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 17/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit


enum MenuType: Int{
    case home
    case random
    case gestures
    case moved
    case api
}
class MenuViewController: UITableViewController {

    var didTapMenuType : ((MenuType) -> Void)?
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        guard  let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true){ [weak self] in
            print("Dismissing: \(menuType)")
            
            self?.didTapMenuType?(menuType)
        }
    }

}
