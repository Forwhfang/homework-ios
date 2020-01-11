//
//  ViewController.swift
//  myApp
//
//  Created by Apple on 2019/9/24.
//  Copyright © 2019 newbee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let initView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        initView.backgroundColor = UIColor.white
        self.view = initView
        
        let secondView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        secondView.backgroundColor = UIColor.red
        self.view.addSubview(secondView)
        
        let labelView = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        labelView.text = "Hello World"
        labelView.backgroundColor = UIColor.yellow
        self.view.addSubview(labelView)
        
        UIView.animate(withDuration: 1){
            var transformTranslate = secondView.transform
            transformTranslate = transformTranslate.translatedBy(x: 100, y: 100)
            secondView.transform = transformTranslate
        }
        
        UIView.animate(withDuration: 1){
            var transformRotate = labelView.transform
            transformRotate = transformRotate.rotated(by: CGFloat(Double.pi/4))
            labelView.transform = transformRotate
        }
        
        let button = UIButton()
        
    }


}

