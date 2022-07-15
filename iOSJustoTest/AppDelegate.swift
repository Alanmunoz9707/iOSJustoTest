//
//  AppDelegate.swift
//  iOSJustoTest
//
//  Created by Alan Muñoz on 14/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        window?.overrideUserInterfaceStyle = .light
        let userVC = UserViewController()
        let navController = UINavigationController(rootViewController: userVC)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        print("application executed")
        
        return true
    }


}

