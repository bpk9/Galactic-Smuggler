//
//  Inventory.swift
//  Galactic Smuggler
//
//  Created by Brian Kasper on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

class Inventory
{
    private var money: Double;
    private var items: [Item];
    
    init(money: Double, items: [Item])
    {
        self.money = money;
        self.items = items;
    }
    
    func getMoney() -> Double
    {
        return money;
    }
    
}
