//
//  ViewController.swift
//  BackgroundFetchDemoNew
//
//  Created by Knoxpo MacBook Pro on 30/01/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timLbel: UILabel!
    var currentTime: Date?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.updateTime()
        // Do any additional setup after loading the view.
    }

    func updateTime()
    {
        
        currentTime = Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        if let currentTime = currentTime {
            
            timLbel.text = formatter.string(from: currentTime)
        }
        
    }
    
    

}

