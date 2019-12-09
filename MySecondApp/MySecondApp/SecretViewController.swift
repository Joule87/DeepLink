//
//  SecretViewController.swift
//  MySecondApp
//
//  Created by Julio Collado on 11/27/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import UIKit

class SecretViewController: UIViewController {

    
    @IBOutlet weak var secretMessage: UILabel!
    
    
    var secretMSG: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        secretMessage.text = secretMSG
    }

}
