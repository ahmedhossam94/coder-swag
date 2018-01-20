//
//  ProductCell.swift
//  coder-swag
//
//  Created by ahmed on 1/20/18.
//  Copyright © 2018 ahmed. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    func UpdateViews(product : Product)  {
        self.productImage.image = UIImage(named : product.imageName)
        self.productPrice.text = product.price
        self.productTitle.text = product.title
    }
    
}
