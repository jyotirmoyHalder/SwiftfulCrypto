//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 24/8/25.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
