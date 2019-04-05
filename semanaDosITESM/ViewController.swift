//
//  ViewController.swift
//  semanaDosITESM
//
//  Created by Alejandro Lugo on 4/4/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var tamañoUserTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func siguienteButtonPressed(_ sender: Any)
    {
        let tamañoUserInput = tamañoUserTextField.text!
        UserDefaults.standard.set(tamañoUserInput, forKey: "UserSize")
        
        if(tamañoUserInput.isEmpty)
        {
            return
        }else
            {
                performSegue(withIdentifier: "toMasa", sender: self)
            }
        
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 100), animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tamañoUserTextField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: -100), animated: true)
    }


}

