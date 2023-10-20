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
    
    
   
 
    
    
    @IBOutlet var numero: UITextField!
    
    @IBOutlet var nombre: UITextField!
    
    @IBOutlet var connecion: UITextField!
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        let json: [String: Any] = ["number":numero.text,"name":nombre.text,"description":connecion.text]

        let jsonData = try? JSONSerialization.data(withJSONObject: json)

        // create post request
        let url = URL(string: "https://coolrepl.robowolf.repl.co/sendcall")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"

        // insert json data to the request
        request.httpBody = jsonData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)
            }
        }

        task.resume()
        
    }
    

    
   
}

