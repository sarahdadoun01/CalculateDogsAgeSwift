//
//  ViewController.swift
//  DogsAgeVersion2
//
//  Created by english on 2022-09-21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtAge: UITextField!
    
    
    @IBAction func txtAgeEditingCHanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    
    
    @IBAction func btnCheckItOutTouchUpInside(_ sender: Any) {
        
        if let age = Int(txtAge.text!), (1...20).contains(age){
            
            let ageInYears = convertDogAge(ageInYears: age)
            
            lblResult.text = "Your dog is \(ageInYears) in human years!"
            
        }else{
            
            lblResult.text = "Please, enter a valid age !"
        }
        lblResult.isHidden = false
    }
    
    /// Convert the given dog age into human age
    func convertDogAge( ageInYears: Int) -> Int{
        return ageInYears * 7
    }

    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

