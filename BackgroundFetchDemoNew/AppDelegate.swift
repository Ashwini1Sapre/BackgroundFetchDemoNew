//
//  AppDelegate.swift
//  BackgroundFetchDemoNew
//
//  Created by Knoxpo MacBook Pro on 30/01/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private let userdefault = UserDefaults.standard

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = UIColor.white
        UINavigationBar.appearance().tintColor = UIColor.white
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.makeKeyAndVisible()
        
        userdefault.register(defaults: ["Log": "date"])
        application.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)
    //    UIApplication.shared.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)
        // Override point for customization after application launch.
        return true
    }

   
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
//        if let viewcontroller = window?.rootViewController as? ViewController {
//            viewcontroller.updateTime()
//        }
        
        let now = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/mm/dd hh:mm:ss"
        let currenttime = formatter.string(from: now as Date)
        let rec = userdefault.object(forKey: "Log") as! String + "\n" + currenttime
        userdefault.set(rec , forKey: "Log")
        userdefault.synchronize()
        print(rec)
        
        
        
        
        
//        if  let tabbarItem = window?.rootViewController as? ViewController {
//            print("hiiio")
//            tabbarItem.updateTime()
//
//
//        }
        
        completionHandler(UIBackgroundFetchResult.newData)
    }
    
   

}

