//
//  ViewController.swift
//  Extension
//
//  Created by om technology on 01/05/19.
//  Copyright © 2019 Panini Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = person(fristName: "parth", lastName: "kanani", email: "parthkanani555@gmail.com", password: "123654")
        print(name.fristName)
         txtName.delegate=self
        self.HideKeybordWhenTapAnywhere()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtName.resignFirstResponder()
        return true
    }
   
    @IBAction func btnAlert(_ sender: UIButton)
    {
        self.popupAlertAction(title: "alert", massge: "Extension Alert", Actiontitle: ["ok","cancle"], actionStyle: [.default,.cancel], Action: [{
            ok in
             print("press ok")
            },{cancle in
                print("press cancle")
            }])
    }
    

}

