//
//  Item.swift
//  Galactic Smuggler
//
//  Created by Brian Kasper on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

import UIKit

class Item
{
    private var price: Double;
    private var image: UIImage;
    
    init(name: String, price: Double, image: UIImage)
    {
        self.price = price;
        self.image = image;
    }
    
    func getPrice() -> Double
    {
        return price;
    }
    
    func getImage() -> UIImage
    {
        return image;
    }
}
