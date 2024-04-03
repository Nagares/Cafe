//
//  CafeApp.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 30.03.2024.
//

import SwiftUI

@main
struct CafeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
