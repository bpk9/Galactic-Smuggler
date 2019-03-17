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
    let Earthpic = UIImage(named: "EarthSmuggle.png") as! UIImage
    let Marspic = UIImage(named: "MarsSmubble.png") as! UIImage
    
    //Items:
    //var Gold = Item(name: "Gold", image: )
    static var Planets : [Planet] = []
    //Item Arrays:
    let EarthItems = ["Humans", "Organs", "Water", "Iron", "Tungsten", "Aluminum", "Lithium"]
    let MarsItems = ["Iron", "Tungsten", "Aluminum", "Gold", "Lithium", "Niobium"]
    
    
    func InitializePlanets() {
        var Earth = Planet(name: "Earth", image: Earthpic, items: EarthItems)
        var Mars = Planet(name: "Mars", image: Marspic, items: MarsItems)
        Planets = [Earth, Mars]
                           
    }
    
    
    
}
