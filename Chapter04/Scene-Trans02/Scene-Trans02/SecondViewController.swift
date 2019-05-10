//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by 조수형 on 10/05/2019.
//  Copyright © 2019 조수형. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func back2(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
