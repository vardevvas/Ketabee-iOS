//
//  Ketabee_iOSApp.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 03/10/2023.
//

import SwiftUI

@main
struct Ketabee_iOSApp: App {
    let persistenceController = PersistenceController.shared
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
