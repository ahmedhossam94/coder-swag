//
//  Category.swift
//  coder-swag
//
//  Created by ahmed on 1/20/18.
//  Copyright © 2018 ahmed. All rights reserved.
//

import Foundation
struct Category {
  private(set)  public var title:String!
  private(set)  public var imageName:String!
    
    init(title: String ,imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
