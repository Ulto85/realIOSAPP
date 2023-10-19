//
//  ViewController.swift
//  forrealthistime
//
//  Created by Aayan Rizvi on 10/10/23.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func cloneVoicePressed(_ sender: Any) {
        if let url = URL(string: "https://assistvuerecord.robowolf.repl.co") {
            UIApplication.shared.open(url)
            /* CREATE WEBSITE TO REDIRECT TO*/
        }
        
    }
    
    
   
    

    
   
}

