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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
