//
//  Model.swift
//  Galactic Smuggler
//
//  Created by Austin on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

import UIKit

class Model{
    
    //Pictures:
    static let Earthpic = UIImage(named: "EarthSmuggle.png") as! UIImage
    static let Marspic = UIImage(named: "MarsSmubble.png") as! UIImage
    static let Goldpic = UIImage(named: "GOld.png") as! UIImage
    static let Waterpic = UIImage(named: "waterdrum.png") as! UIImage
    static let Niobiumpic
    //Items:
    static var Gold : Item = Item(name: "Gold Ingot", image: Goldpic)
    static var Water : Item = Item(name: "Water Barrel", image: Waterpic)
    static var Niobium : Item = Item(name: "Niobium Ore", image: Niobiumpic)
    //var Gold = Item(name: "Gold", image: )
    static let EarthItems: [Item] = [Gold]
    static let MarsItems: [Item] = []
    static var Planets : [Planet] = []
    static var Earth = Planet(name: "Earth", image: Earthpic, items: EarthItems)
    static var Mars = Planet(name: "Mars", image: Marspic, items: MarsItems)
    //Item Arrays:
   
    
   
    
}
