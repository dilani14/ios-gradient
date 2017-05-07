//
//  ViewController.swift
//  gradientapp
//
//  Created by Dilani Alwis on 4/29/17.
//  Copyright © 2017 Dilani Alwis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gradientLayer: CAGradientLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        createGradientLayer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        
        let color1 = UIColor.blue.cgColor as CGColor
        let color2 = UIColor.purple.cgColor as CGColor
       
        gradientLayer.colors = [color1, color2]
        
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        
        
        //gradientLayer.locations = [0.0, 0.5]
        
        self.view.layer.addSublayer(gradientLayer)
    }

}

