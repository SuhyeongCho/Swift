//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by 조수형 on 11/05/2019.
//  Copyright © 2019 조수형. All rights reserved.
//

import UIKit

class FormViewController: UIViewController{
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBAction func onSubmit(_ sender: Any) {
//        let preVC = self.presentingViewController
//        guard let vc = preVC as? ViewController else{
//            return
//        }
//
//        vc.paramEmail = self.email.text
//        vc.paramUpdate = self.isUpdate.isOn
//        vc.paramInterval = self.interval.value
        
//        let ad = UIApplication.shared.delegate as? AppDelegate
//
//        ad?.paramEmail = self.email.text
//        ad?.paramUpdate = self.isUpdate.isOn
//        ad?.paramInterval = self.interval.value
//
        
        let ud = UserDefaults.standard
        
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")
        
        self.presentingViewController?.dismiss(animated: true)

    }
}
