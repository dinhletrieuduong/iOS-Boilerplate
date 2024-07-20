//
//  AppDelegate.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import Foundation
import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {

    static let shared: AppDelegate = {
        guard let appD = UIApplication.shared.delegate as? AppDelegate else {
            return AppDelegate()
        }
        return appD
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        AnalyticsManager.shared.setup()
        // Code here
        
        return true
    }


    func unexpectedLogout() {
        UserDataManager.shared.deleteUser()
//        SessionManager.shared.deleteSession()
//        // Clear any local data if needed
//        // Take user to onboarding if needed, do NOT redirect the user
//        // if is already in the landing to avoid losing the current VC stack state.
//        if window?.rootViewController is HomeViewController {
//            AppNavigator.shared.navigate(to: OnboardingRoutes.firstScreen, with: .changeRoot)
//        }
    }
}
