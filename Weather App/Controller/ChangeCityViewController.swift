//
//  ChangeCityViewController.swift
//  Weather App
//
//  Created by shawky on 4/24/19.
//  Copyright © 2019 shawky. All rights reserved.
//

import UIKit


protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
 
    
  
    
    @IBOutlet weak var changeCityTextField: UITextField!
    
    
    
    @IBAction func getWeatherPressed(_ sender: Any) {
    
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
   
    
    @IBAction func backButtonPressed(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
    }
    
}
