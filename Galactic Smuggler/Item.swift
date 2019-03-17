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
    
    private var name: String;
    private var price: Double;
    private var image: UIImage;
    var PriceHistory : [Double];
    
    init(name: String, image: UIImage)
    {
        self.name = name;
        self.price = 0;
        self.image = image;
        PriceHistory = [];
    }
    
    func getName() -> String
    {
        return self.name;
    }
    
    func setPrice(price: Double)
    {
        self.price = price;
    }
    
    func getPrice() -> Double
    {
        return price;
    }
    
    func getImage() -> UIImage
    {
        return image;
    }
    
    func passDay() {
        let Change = Int.random(in: -5 ... 5)
        let newPrice = PriceHistory[PriceHistory.count - 1] + Double(Change)
        PriceHistory[PriceHistory.count] = newPrice
        setPrice(price: newPrice)
        
    }
}
