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
    var ItemHistory = [String:[Double]]()
    
    init(name: String, image: UIImage)
    {
        self.name = name;
        self.price = 0;
        self.image = image;
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
        for (key, _) in ItemHistory {
            let Change = Int.random(in: -5 ... 5)
            let newPrice = ItemHistory[key]![ItemHistory[key]!.count - 1] + Double(Change)
            ItemHistory[key]![ItemHistory[key]!.count] = newPrice
            setPrice(price: newPrice)
        }
        
    }
}
