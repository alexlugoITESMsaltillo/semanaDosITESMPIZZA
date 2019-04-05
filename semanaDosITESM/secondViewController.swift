//
//  secondViewController.swift
//  semanaDosITESM
//
//  Created by Alejandro Lugo on 4/4/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var masaUserTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func siguienteButtonPressedTwo(_ sender: Any)
    {
        let masaUserInput = masaUserTextField.text!
        UserDefaults.standard.set(masaUserInput, forKey: "UserMasa")
        
        if (masaUserInput.isEmpty)
        {
            return
        }else
            {
                performSegue(withIdentifier: "toQueso", sender: self)
            }
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 100), animated: true)
    }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        masaUserTextField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: -100), animated: true)
    }







}

