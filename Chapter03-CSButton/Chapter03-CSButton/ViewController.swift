//
//  ViewController.swift
//  Chapter03-CSButton
//
//  Created by 조수형 on 21/05/2019.
//  Copyright © 2019 조수형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let csBtn = CSButton()
        csBtn.frame = CGRect(x: 30, y: 50, width: 150, height: 30)
        self.view.addSubview(csBtn)
        // Do any additional setup after loading the view.
        
        let rectBtn = CSButton(type: .rect)
        rectBtn.frame = CGRect(x: 30, y: 200, width: 150, height: 30)
        self.view.addSubview(rectBtn)
        
        let circleBtn = CSButton(type: .circle)
        circleBtn.frame = CGRect(x: 200, y: 200, width: 150, height: 30)
        self.view.addSubview(circleBtn)
        
    }


}

