//
//  ViewController.swift
//  MySecondApp
//
//  Created by Julio Collado on 11/27/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToFirstApp(_ sender: UIButton) {
        let application = UIApplication.shared
        
        let secondAppPath = "primary://"
        
        guard let appUrl = URL(string: secondAppPath) else { return }
        
        guard let websiteURL = URL(string: "https://www.apple.com/ios/app-store/")  else { return }
        
        if application.canOpenURL(appUrl) {
            application.open(appUrl)
        } else {
            application.open(websiteURL)
        }
    }
    
}

