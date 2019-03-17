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
    var index: Int = 0
    var currentPlanet: Planet = Model.Earth
    

    
    
    override func viewDidAppear(_ animated: Bool) {
        self.LeftPlanet.isHidden = true;
        self.index = 0
        self.setCurrent(planet: self.currentPlanet);
    }
    
    func setCurrent(planet: Planet) {
        PlanetImage.image = planet.getImage()
        PlanetLabel.text = planet.getName()
        self.currentPlanet = planet
    }
    
    @IBAction func LeftPlanetAction(_ sender: UIButton) {
        self.RightPlanet.isHidden = false;
        
        if (index > 1)
        {
            index -= 1
        
        }
        else
        {
            index = 0;

            self.LeftPlanet.isHidden = true;
        }
        self.setCurrent(planet: Model.Planets[index])
        //print(currentPlanet.getName())
        UpdateUI()
    }
    
    @IBAction func RightPlanetAction(_ sender: UIButton) {
        
        self.LeftPlanet.isHidden = false;
        index += 1
        if (index == Model.Planets.count - 1)
        {
            self.RightPlanet.isHidden = true
        }
        
        self.setCurrent(planet: Model.Planets[index])
        //print(currentPlanet.getName())
        UpdateUI()
    }
    
    @IBAction func LaunchAction(_ sender: UIButton) {
        Model.passDay()
        performSegue(withIdentifier: "unwindHome", sender: self)
    }
    
    @IBAction func BackAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindHome", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    func UpdateUI() {
        //print(Model.current_planet.getName(), currentPlanet.getName())
        if (Model.current_planet.getName() == currentPlanet.getName()) {
            Launch.isHidden = true;
        }
        else
        {
            Launch.isHidden = false;
        }
    }
    
}
