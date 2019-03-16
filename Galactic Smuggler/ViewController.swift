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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func loadPlanet(planet: PlanetObject)
    {
        self.planetName.text = planet.getName();
        self.loadStackForPlanet(planet: planet)
    }
    
    func loadStackForPlanet(planet: PlanetObject)
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

