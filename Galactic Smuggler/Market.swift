//
//  Market.swift
//  Galactic Smuggler
//
//  Created by Brian Kasper on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

class Market
{
    var day = 0
    var Location : Planet;
    var ItemHistory = [String:[Double]]()
    
    init(planet: Planet) {
        Location = planet
        var index = 0
        for item in planet.getItems() {
            ItemHistory[item.getName()] = [Model.EarthItemPrice[index]]
            
            index += 1
        }
    }
    
    func passDay() {
        for key in ItemHistory {
            let Number = Int.random(in: -5 ... 5)
            
        }
        
    }
    
}
