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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.layer.cornerRadius = 58
        yellowTrafficLight.layer.cornerRadius = 58
        greenTrafficLight.layer.cornerRadius = 58
        
        redTrafficLight.alpha = 0.3
        yellowTrafficLight.alpha = 0.3
        greenTrafficLight.alpha = 0.3
        
        redTrafficLight.isOpaque.toggle()
        yellowTrafficLight.isOpaque.toggle()
        greenTrafficLight.isOpaque.toggle()
        
        trafficLightButton.layer.cornerRadius = 8
    }
    
    
    @IBAction func trafficLightButtonDidTapped() {
        trafficLightButton.setTitle("Next", for: .normal)
        
        if !redTrafficLight.isOpaque {
            redTrafficLight.alpha = 1
            redTrafficLight.isOpaque.toggle()
        } else if !yellowTrafficLight.isOpaque {
            yellowTrafficLight.alpha = 1
            yellowTrafficLight.isOpaque.toggle()
            redTrafficLight.alpha = 0.3
        } else if !greenTrafficLight.isOpaque {
            greenTrafficLight.alpha = 1
            greenTrafficLight.isOpaque.toggle()
            yellowTrafficLight.alpha = 0.3
        } else if greenTrafficLight.isOpaque {
            greenTrafficLight.alpha = 0.3
            redTrafficLight.alpha = 1
        }
    }
}
