//
//  Model.swift
//  Galactic Smuggler
//
//  Created by Austin on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

import UIKit

class Model{
    
    static let inventory = Inventory(money: 100, items: [:])
    
    //Pictures:
    
    static let Earthpic = UIImage(named: "EarthSmuggle.png") as! UIImage
    static let Marspic = UIImage(named: "MarsSmuggle.png") as! UIImage
    static let Goldpic = UIImage(named: "GOld.png") as! UIImage
    static let Waterpic = UIImage(named: "waterdrum.png") as! UIImage
    static let Niobiumpic = UIImage(named: "Niodium.png") as! UIImage
    
    
    
    //Items:
    static var Gold : Item = Item(name: "Gold Ingot", starting_price: 40.0, image: Goldpic)
    static var Water : Item = Item(name: "Water Barrel", starting_price: 20.0, image: Waterpic)
    static var Niobium : Item = Item(name: "Niobium Ore", starting_price: 60.0, image: Niobiumpic)
    //var Gold = Item(name: "Gold", image: )
    
    
    
    static let EarthItems: [Item] = [Gold, Water]
    static let MarsItems: [Item] = [Gold, Niobium]
    
    static var current_planet: Planet! = Earth;
    
    
    static var Planets : [Planet] = [Earth, Mars]
    
    
    
    static var Earth = Planet(name: "Earth", image: Earthpic, items: EarthItems)
    static var Mars = Planet(name: "Mars", image: Marspic, items: MarsItems)
    //Item Arrays:
    
    //Markets:
    static var EarthMarket : Market = Market(planet: Earth)
    
    static func passDay() {
        for planet in Model.Planets {
            for item in planet.getItems() {
                item.passDay()
            }
        }
    }
}
