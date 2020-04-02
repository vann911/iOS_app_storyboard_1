//
//  ProductsTableViewCell.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 30/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var ProductID: UILabel!
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductDescription: UILabel!
    @IBOutlet weak var ProductImgTitle: UILabel!
    @IBOutlet weak var ProductImgURL: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
