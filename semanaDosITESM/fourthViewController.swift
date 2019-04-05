//
//  fourthViewController.swift
//  semanaDosITESM
//
//  Created by Alejandro Lugo on 4/4/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import UIKit

class fourthViewController: UIViewController, UITextFieldDelegate    {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var ingredientesUserTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    
    @IBAction func siguienteButtonPressedFour(_ sender: Any)
    {
        let ingredientesUserInput = ingredientesUserTextField.text!
        UserDefaults.standard.set(ingredientesUserInput, forKey: "UserIngredients")
        
        if(ingredientesUserInput.isEmpty)
            {
                return
            }else
        
            {
            performSegue(withIdentifier: "toConfirmacion", sender: self)
            }
    }


    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 100), animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        ingredientesUserTextField.resignFirstResponder()
        return true
        
    }

    func textFieldDidEndEditing(_ textField: UITextField)
    {
        ScrollView.setContentOffset(CGPoint(x: 0, y: -100), animated: true)
    }


}
