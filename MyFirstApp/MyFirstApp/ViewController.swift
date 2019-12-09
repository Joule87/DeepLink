//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Julio Collado on 11/27/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToSecondApp(_ sender: UIButton) {
        guard let message = messageTextField.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }
        
        let application = UIApplication.shared
        
        let secondAppPath = "second://SecretViewController?message=\(message)"
        
        guard let appUrl = URL(string: secondAppPath) else { return }
        
        guard let websiteURL = URL(string: "https://www.apple.com/ios/app-store/")  else { return }
        
        if application.canOpenURL(appUrl) {
            application.open(appUrl)
        } else {
            application.open(websiteURL)
        }
        
    }
    
}

