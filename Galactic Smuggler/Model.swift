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
    
    //Items:
    //var Gold = Item(name: "Gold", image: )
    static let EarthItems : [Item] = []
    static let MarsItems : [Item] = []
    static var Planets : [Planet] = []
    static var Earth = Planet(name: "Earth", image: Earthpic, items: EarthItems)
    static var Mars = Planet(name: "Mars", image: Marspic, items: MarsItems)
    //Item Arrays:
   
    
   
    
}
