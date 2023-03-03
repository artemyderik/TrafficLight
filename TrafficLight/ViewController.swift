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
    
    private  let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.layer.cornerRadius = 59
        yellowTrafficLight.layer.cornerRadius = 59
        greenTrafficLight.layer.cornerRadius = 59
        trafficLightButton.layer.cornerRadius = 8
        
        redTrafficLight.alpha = lightIsOff
        yellowTrafficLight.alpha = lightIsOff
        greenTrafficLight.alpha = lightIsOff
        
        trafficLightButton.setTitle("Start", for: .normal)

    }
    
    
    @IBAction func trafficLightButtonDidTapped() {
        trafficLightButton.setTitle("Next", for: .normal)
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
