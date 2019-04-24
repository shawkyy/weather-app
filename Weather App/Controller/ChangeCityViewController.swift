//
//  ChangeCityViewController.swift
//  Weather App
//
//  Created by shawky on 4/24/19.
//  Copyright © 2019 shawky. All rights reserved.
//

import UIKit


//Write the protocol declaration here:
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    //This is the pre-linked IBOutlets to the text field:
 
    
  
    
    @IBOutlet weak var changeCityTextField: UITextField!
    
    
    //This is the IBAction that gets called when the user taps on the "Get Weather" button:
    
    @IBAction func getWeatherPressed(_ sender: Any) {
    
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
   
    
    @IBAction func backButtonPressed(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
    }
    
}