//
//  AppDelegate.swift
//  BackgroundFetchDemoNew
//
//  Created by Knoxpo MacBook Pro on 30/01/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UIApplication.shared.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)
        // Override point for customization after application launch.
        return true
    }

   
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        if let viewcontroller = window?.rootViewController as? ViewController {
            viewcontroller.updateTime()
        }
        
    }
    
   

}

