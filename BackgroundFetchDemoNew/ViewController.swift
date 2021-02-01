//
//  ViewController.swift
//  BackgroundFetchDemoNew
//
//  Created by Knoxpo MacBook Pro on 30/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let userdefaut = UserDefaults.standard
    @IBOutlet weak var timLbel: UILabel!
    var currentTime: Date?
    
    
    private let label: UILabel = {
        
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = .blue
        label.numberOfLines = 10
        return label
        
    }()
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .gray
        label.text = userdefaut.object(forKey: "Log") as? String
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
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

