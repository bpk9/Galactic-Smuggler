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
    
    
    init(planet: Planet) {
        Location = planet
        }
    }
    
    func passDay() {
        for planet in Model.Planets {
            for item in planet.getItems() {
                item.passDay()
        }
    }
    
    
}
