//
//  CategoryCell.swift
//  coder-swag
//
//  Created by ahmed on 1/20/18.
//  Copyright © 2018 ahmed. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

   
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func UpdateViews(category : Category) {
        categoryTitle.text = category.title
        categoryImage.image = UIImage (named: category.imageName)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
