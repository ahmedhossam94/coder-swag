//
//  Product.swift
//  coder-swag
//
//  Created by ahmed on 1/20/18.
//  Copyright © 2018 ahmed. All rights reserved.
//

import Foundation
struct Product {
    private(set)  public var title:String!
    private(set) public var price:String!
    private(set)  public var imageName:String!
    
    init(imageName: String,description: String ,price: String) {
        self.title = description
        self.price = price
        self.imageName = imageName
    }
}
