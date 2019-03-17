//
//  PlanetLaunchView.swift
//  Galactic Smuggler
//
//  Created by Austin on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//


import UIKit

class PlanetLaunchView: UIView
{
    @IBOutlet var LeftPlanet: UIButton!
    @IBOutlet var RightPlanet: UIButton!
    @IBOutlet var Launch: UIButton!
    @IBOutlet var Back: UIButton!
    @IBOutlet weak var PlanetLabel: UILabel!
    @IBOutlet weak var PlanetImage: UIImageView!
    var IndexPlanet = 0
    var CurrentPlanet: Planet;
    func SetCurrent() {
        CurrentPlanet = Model.Planets[IndexPlanet%(Model.Planets.count)]
    }
    
    @IBAction func LeftPlanetAction(_ sender: UIButton) {
        IndexPlanet -= 1
    }
    
    @IBAction func RightPlanetAction(_ sender: UIButton) {
        IndexPlanet += 1
    }
    
    @IBAction func LaunchAction(_ sender: UIButton) {
    }
    
    @IBAction func BackAction(_ sender: UIButton) {
    }
    
    
    
    
}
