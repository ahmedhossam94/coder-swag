//
//  ViewController.swift
//  coder-swag
//
//  Created by ahmed on 1/19/18.
//  Copyright © 2018 ahmed. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
   
    @IBOutlet weak var categoryTable: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell:CategoryCell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell
        {
            let category = DataService.instance.getCategories()[indexPath.row]
        
            
            cell.UpdateViews(category: category)
                return cell
            
        }
        else{
            return CategoryCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVc{
            let but = UIBarButtonItem()
            but.title = ""
            navigationItem.backBarButtonItem = but
           productVC.initProduct(category: sender as! Category)
            
        }
    }

}

