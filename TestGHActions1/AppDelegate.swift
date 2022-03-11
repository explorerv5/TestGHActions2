//
//  AppDelegate.swift
//  TestGHActions1
//
//  Created by githubactions on 22.02.2022.
//

import UIKit
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

// test merge when github action not build

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        AppCenter.start(withAppSecret: "c0af44f9-9860-4e38-a824-0336a04815b6",
                        services: [Analytics.self,
                                   Crashes.self])
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

