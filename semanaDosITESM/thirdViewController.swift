//
//  thirdViewController.swift
//  semanaDosITESM
//
//  Created by Alejandro Lugo on 4/4/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var quesoUserTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func siguienteButtonPressedThree(_ sender: Any)
    {
        let quesoInput = quesoUserTextField.text!
        UserDefaults.standard.set(quesoInput, forKey: "UserQueso")
        
        if(quesoInput.isEmpty)
        {
            return
        }else
            {
                    performSegue(withIdentifier: "toIngredientes", sender: self)
            }
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 100), animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        quesoUserTextField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: -100), animated: true)
    }

}
