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
    
    // init variables
    let starting_cash = 100.0;
    var starting_items: [String : Int] = [:];
    
    // global
    var inventory: Inventory!;
    var money: Double = 0;
    var current_planet: Planet!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initGame();
    }
    
    func initGame()
    {
        
        initInventory();
        
        self.money = starting_cash;
        updateCash();
        
        self.current_planet = Model.Earth;
        self.loadPlanet(planet: self.current_planet);
        
    }
    
    func initInventory()
    {
        self.inventory = Inventory(money: starting_cash, items: starting_items);
    }
    
    func updateCash()
    {
        self.cash.text = String(money);
    }
    
    func loadPlanet(planet: Planet)
    {
        self.planetName.text = planet.getName();
        self.loadStackForPlanet(planet: planet);
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
        
        self.items.addArrangedSubview(itemView);
        self.view.addSubview(self.items);
    }
    
    @IBAction func unwindHome(segue: UIStoryboardSegue)
    {
        
    }
    
}

