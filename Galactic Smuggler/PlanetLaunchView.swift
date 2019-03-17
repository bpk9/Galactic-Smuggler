//
//  PlanetLaunchView.swift
//  Galactic Smuggler
//
//  Created by Austin on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//


import UIKit

class PlanetLaunchView: UIViewController
{
    
    
    @IBOutlet var LeftPlanet: UIButton!
    @IBOutlet var RightPlanet: UIButton!
    @IBOutlet var Launch: UIButton!
    @IBOutlet var Back: UIButton!
    @IBOutlet weak var PlanetLabel: UILabel!
    @IBOutlet weak var PlanetImage: UIImageView!
    var IndexPlanet = 0
    var CurrentPlanet: Planet = Model.Earth;
    
    func SetCurrent() {
        CurrentPlanet = Model.Planets[IndexPlanet%(Model.Planets.count)]
        PlanetImage.image = CurrentPlanet.getImage()
    }
    
    @IBAction func LeftPlanetAction(_ sender: UIButton) {
        IndexPlanet -= 1
        SetCurrent()
    }
    
    @IBAction func RightPlanetAction(_ sender: UIButton) {
        IndexPlanet += 1
        SetCurrent()
    }
    
    @IBAction func LaunchAction(_ sender: UIButton) {
    }
    
    @IBAction func BackAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindHome", sender: self)
    }
    
    
    
    
}
