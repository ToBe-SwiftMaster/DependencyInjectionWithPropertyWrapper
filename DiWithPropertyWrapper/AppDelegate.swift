//
//  AppDelegate.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        DiContainer {
            Resolver.shared.add { ElectricHeater() }
            Resolver.shared.add { Pump() }
            Resolver.shared.add { CustomerApiService() }
            
            Resolver.shared.add { CoffeeMakerViewModel() }
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigationController = UINavigationController()
        window?.rootViewController = navigationController
        let coordinator = CoffeMakerCoordinator(navi: navigationController)
        coordinator.start()
        window?.makeKeyAndVisible()
    
        
        return true
    }

    


}

