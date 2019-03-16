//
//  File.swift
//  Galactic Smuggler
//
//  Created by Brian Kasper on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

class Planet
{
    
    var name: String;
    var items: [Item];
    
    init(name: String, items: [Item])
    {
        self.name = name;
        self.items = items;
    }
}
