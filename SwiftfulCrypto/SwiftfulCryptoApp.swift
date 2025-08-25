//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 24/8/25.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden, for: .navigationBar)
            }
        }
    }
}
