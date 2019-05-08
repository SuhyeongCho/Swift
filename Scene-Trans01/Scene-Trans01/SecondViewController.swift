//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 조수형 on 08/05/2019.
//  Copyright © 2019 조수형. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
