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
        if let url = URL(string: "https://www.hackingwithswift.com") {
            UIApplication.shared.open(url)
            /* CREATE WEBSITE TO REDIRECT TO*/
        }
        
    }
    
    @IBAction func questionMarkPressed(_ sender: Any) {
        if let url = URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ") {
            UIApplication.shared.open(url)
            /* Demo Video??!?!?!? */
        }
    }
}

