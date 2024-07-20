//
//  iOSBoilerplateApp.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 19/7/24.
//

import SwiftUI

@main
struct iOSBoilerplateApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    init() {
        Preferences.applyAppearance(Preferences.appearanceMode)
    }

    var body: some Scene {
        WindowGroup {
            RootCoordinator()
        }
    }
}
