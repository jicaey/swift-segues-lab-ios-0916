//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var animals: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animals = animals {
            nameLabel?.text = animals
            
            let animalName = englishAnimalName(animals)
            imageLabel?.text = animalName
            navigationItem.title = animals

        }
    }
    
        
        func englishAnimalName(_ animal: String) -> String {
            switch animal {
            case "Dog":
                return "🐶"
            case "Cat":
                return "🐱"
            case "Mouse":
                return "🐭"
            case "Hamster":
                return "🐹"
            case "Bunny":
                return "🐰"
            case "Panda":
                return "🐼"
            case "Lion":
                return "🦁"
            case "Pig":
                return "🐷"
            case "Frog":
                return "🐸"
            case "Octopus":
                return "🐙"
            default:
                return ""
            }
        }

        
}
