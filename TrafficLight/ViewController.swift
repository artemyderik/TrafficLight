//
//  ViewController.swift
//  TrafficLight
//
//  Created by Артемий Дериглазов on 01.03.2023.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    let lightIsOn: CGFloat = 1
    let lightIsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.layer.cornerRadius = 59
        yellowTrafficLight.layer.cornerRadius = 59
        greenTrafficLight.layer.cornerRadius = 59
        
        redTrafficLight.alpha = 0.3
        yellowTrafficLight.alpha = 0.3
        greenTrafficLight.alpha = 0.3
        
        trafficLightButton.layer.cornerRadius = 8
    }
    
    
    @IBAction func trafficLightButtonDidTapped() {
        trafficLightButton.setTitle("Next", for: .normal)
        
        /*   if redTrafficLight.isOpaque {
         redTrafficLight.alpha = 1
         redTrafficLight.isOpaque.toggle()
         } else if yellowTrafficLight.isOpaque {
         yellowTrafficLight.alpha = 1
         yellowTrafficLight.isOpaque.toggle()
         redTrafficLight.alpha = 0.3
         } else if greenTrafficLight.isOpaque {
         greenTrafficLight.alpha = 1
         greenTrafficLight.isOpaque.toggle()
         yellowTrafficLight.alpha = 0.3
         } else if !greenTrafficLight.isOpaque {
         greenTrafficLight.alpha = 0.3
         redTrafficLight.alpha = 1
         }
         } */
        
        if redTrafficLight.alpha == yellowTrafficLight.alpha {
            redTrafficLight.alpha = lightIsOn
            greenTrafficLight.alpha = lightIsOff
        } else if redTrafficLight.alpha == lightIsOn && yellowTrafficLight.alpha == greenTrafficLight.alpha {
            redTrafficLight.alpha = lightIsOff
            yellowTrafficLight.alpha = lightIsOn
        } else if redTrafficLight.alpha == greenTrafficLight.alpha {
            yellowTrafficLight.alpha = lightIsOff
            greenTrafficLight.alpha = lightIsOn
        }
    }
}
