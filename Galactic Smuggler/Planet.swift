//
//  Planet.swift
//  Galactic Smuggler
//
//  Created by Austin on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

class PlanetObject
{
    private var name: String;
    private var items: [Item];
    
    init(name: String, items: [Item])
    {
        self.name = name;
        self.items = items;
    }
}
