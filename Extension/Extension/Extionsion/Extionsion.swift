//
//  Extionsion.swift
//  Extension
//
//  Created by om technology on 01/05/19.
//  Copyright © 2019 Panini Academy. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    func popupAlertAction(title:String,massge:String,Actiontitle:[String],actionStyle:[UIAlertActionStyle],Action:[((UIAlertAction)->Void)])  {
         let alert = UIAlertController(title: title, message: massge, preferredStyle: .alert)
        for (index,title) in Actiontitle.enumerated()
        {
            let action = UIAlertAction(title: title , style:actionStyle[index],
                handler: Action[index])
            alert.addAction(action)
            
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    func HideKeybordWhenTapAnywhere() {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyBord))
        tap.cancelsTouchesInView=false
        view.addGestureRecognizer(tap)
        
    }
    @objc func dissmissKeyBord()
    {
        view.endEditing(true)
    }
}

