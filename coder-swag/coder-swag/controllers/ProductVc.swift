//
//  ProductVc.swift
//  coder-swag
//
//  Created by ahmed on 1/21/18.
//  Copyright © 2018 ahmed. All rights reserved.
//

import UIKit

class ProductVc: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

    var products = [Product]()
    @IBOutlet weak var Productcolllection : UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
            Productcolllection.dataSource = self
        Productcolllection.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initProduct(category : Category){
        products = DataService.instance.getProducts(ForProductTitle: category.title)
        navigationItem.title = category.title
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell:ProductCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell{
            cell.UpdateViews(product: products[indexPath.row])
            
    
            return cell
        }
             return ProductCell()
        
       
    }

}
