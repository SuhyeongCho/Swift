//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by 조수형 on 10/05/2019.
//  Copyright © 2019 조수형. All rights reserved.
//

import UIKit

class NewSegue: UIStoryboardSegue{
    
    override func perform(){
        let srcUVC = self.source
        
        let destUVC = self.destination
        
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}
