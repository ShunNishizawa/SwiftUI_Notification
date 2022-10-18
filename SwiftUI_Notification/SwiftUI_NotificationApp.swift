//
//  SwiftUI_NotificationApp.swift
//  SwiftUI_Notification
//
//  Created by 西澤駿 on 2022/10/17.
//

import SwiftUI
import UIKit


@main
struct SwiftUI_NotificationApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate:NSObject,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization (options: .alert) { granted, error in
            if let error = error {
                print(error.localizedDescription)
            }

            if granted {
                print("許可されました")
            } else {
                print("拒否されました")
            }
        }
        return true
    }
}

