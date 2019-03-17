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
    private var items = [String : Int]();
    
    init(money: Double, items: [String : Int])
    {
        self.money = money;
        self.items = items;
    }
    
    func getMoney() -> Double
    {
        return money;
    }
    
    func add(item: Item)
    {
        // if item is already in inventory
        if let count = self.items[item.getName()]
        {
            self.items[item.getName()] = count + 1;
        }
        else
        {
            self.items[item.getName()] = 1;
        }
    }
    
    func remove(item: Item)
    {
        if let count = self.items[item.getName()]
        {
            if (count > 1)
            {
                self.items[item.getName()] = count - 1;
                return;
            }
            removeAll(item: item);
        }
    }
    
    func removeAll(item: Item)
    {
        self.items.removeValue(forKey: item.getName());
    }
    
}
