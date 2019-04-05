//
//  confirmacionViewController.swift
//  semanaDosITESM
//
//  Created by Alejandro Lugo on 4/4/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import UIKit

class confirmacionViewController: UIViewController {

    @IBOutlet weak var tamanoConfirmationLabel: UILabel!
    @IBOutlet weak var masaConfirmationLabel: UILabel!
    @IBOutlet weak var quesoConfirmationLabel: UILabel!
    @IBOutlet weak var ingredientesConfirmationLabel: UILabel!
    
    let tamanoConfirmation = UserDefaults.standard.value(forKey: "UserSize")
    let masaConfirmation = UserDefaults.standard.value(forKey: "UserMasa")
    let quesoConfirmation = UserDefaults.standard.value(forKey: "UserQueso")
    let ingredientesConfirmation = UserDefaults.standard.value(forKey: "UserIngredients")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tamanoConfirmationLabel.text = tamanoConfirmation as? String
        masaConfirmationLabel.text = masaConfirmation as? String
        quesoConfirmationLabel.text = quesoConfirmation as? String
        ingredientesConfirmationLabel.text = ingredientesConfirmation as? String
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }





}
