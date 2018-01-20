//
//  DataServices.swift
//  coder-swag
//
//  Created by ahmed on 1/20/18.
//  Copyright © 2018 ahmed. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
    private let shirts = [
       
        Product(imageName: "shirt01", description: "Devslopes Logo Black T-Shirt", price: "$25"),
        Product(imageName: "shirt02", description: "Devslopes Logo White T-Shirt", price: "$45"),
        Product(imageName: "shirt03", description: "Devslopes Logo Red T-Shirt", price: "$85"),
        Product(imageName: "shirt04", description: "Devslopes Logo Graphic T-Shirt", price: "$15"),
        Product(imageName: "shirt05", description: "Devslopes Logo Graphic T-Shirt", price: "$30")
    ]
    
    private let hats = [
        Product(imageName: "hat01", description: "Devslopes Logo Graphic Hat", price: "$25"),
        Product(imageName: "hat02", description: "Devslopes Logo Graphic Hat", price: "$45"),
        Product(imageName: "hat04", description: "Devslopes Logo white Hat", price: "$15")
    ]
    
    private let hoodies = [
        Product(imageName: "hoodie01", description: "Devslopes Logo Graphic Hoodie", price: "$25"),
        Product(imageName: "hoodie02", description: "Devslopes Logo Graphic Hoodie", price: "$45"),
        Product(imageName: "hoodie03", description: "Devslopes Logo Graphic Hoodie", price: "$85"),
        Product(imageName: "hoodie04", description: "Devslopes Logo Graphic Hoodie", price: "$15")
    ]
    private let digitalGoods = [Product]()
   
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(ForProductTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
          return  getShirts()
        case "HOODIES":
           return getHoodies()
        case "HATS":
          return  getHats()
        case "DIGITAL":
          return  getDigitalGoods()
        default:
          return  getShirts()
        }
        
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
