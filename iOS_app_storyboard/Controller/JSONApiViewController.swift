//
//  JSONApiViewController.swift
//  iOS_app_storyboard
//
//  Created by Viola, Christian Van Bagaporo on 27/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class JSONApiViewController: UIViewController, UITableViewDataSource{
    
    private var products = [Products]()
    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchProductsData(completion: ())
    }
    
    fileprivate func fetchProductsData(completion: ()){
        
        let urlString = "http://hplussport.com/api/products"
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
         
            //success
            do{
                
                self.products = try JSONDecoder().decode([Products].self, from: data!)
              
                self.products.forEach { (product) in print(product.id!)
                   
              
                }
            
                
            }catch let jsonError{
                print(jsonError)
            }
            
            //if Error occured
            if let error = error{
               print(error)
                return
            }
            
           
        }.resume()
          
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return products.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsCell") as? ProductsTableViewCell else {
               return UITableViewCell()
           
           }
           let product = products[indexPath.row]
            cell.ProductID.text = product.id
                     cell.ProductName.text = product.name
                     cell.ProductImgURL.text = product.imageURLString
                     cell.ProductImgTitle.text = product.imageTitle
                     cell.ProductDescription.text = product.description
           return cell
       }
    
}
