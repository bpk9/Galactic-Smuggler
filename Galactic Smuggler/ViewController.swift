//
//  ViewController.swift
//  Galactic Smuggler
//
//  Created by Brian Kasper on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cash: UILabel!
    @IBOutlet var items: UIStackView!
    @IBOutlet var planetName: UILabel!
    
    var inventory: Inventory!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initGame();
        
    }
    
    func initGame()
    {
        let starting_cash = 100.0;
        
        self.inventory = Inventory(money: starting_cash, items: []);
    }
    
    func loadPlanet(planet: Planet)
    {
        self.planetName.text = planet.getName();
        self.loadStackForPlanet(planet: planet)
    }
    
    func loadStackForPlanet(planet: Planet)
    {
        for item in planet.getItems()
        {
            self.addItemToStackView(item: item);
        }
    }
    
    func addItemToStackView(item: Item)
    {
        let itemView: PurchaseWindow = PurchaseWindow.instanceFromNib() as! PurchaseWindow;
        itemView.loadUI(item: item);
    }
    
}

