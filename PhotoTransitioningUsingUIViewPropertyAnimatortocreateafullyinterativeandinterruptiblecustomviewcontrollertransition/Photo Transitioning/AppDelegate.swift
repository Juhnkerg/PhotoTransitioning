/*
    Copyright (C) 2016 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The application delegate.
*/

import UIKit

/// https://developer.apple.com/forums/thread/54243
/// https://developer.apple.com/library/archive/samplecode/PhotoTransitioning/Introduction/Intro.html#//apple_ref/doc/uid/TP40017554

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var navigationController: UINavigationController!
    
    var transitionController: AssetTransitionController!
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = [:]) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)

        navigationController = UINavigationController(rootViewController: AssetViewController(layoutStyle: .grid))
        transitionController = AssetTransitionController(navigationController: navigationController)
        
        window.rootViewController = navigationController
        navigationController.delegate = transitionController

        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}
