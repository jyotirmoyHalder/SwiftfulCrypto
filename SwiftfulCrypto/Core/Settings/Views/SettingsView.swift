//
//  SettingsView.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 1/9/25.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://youtube.com/c/swiftfulthinking")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://nicksarno.com")!
    
    var body: some View {
        
        NavigationStack {
                   ZStack {
                       // Full-screen background
                       Color.theme.background.ignoresSafeArea()

                       // Content
                       List {
                           swiftfulthinkingSection
                           coinGeckoSection
                           developerSection
                           applicationSection
                       }
                       .listStyle(.insetGrouped)             // modern equivalent of GroupedListStyle
                       .scrollContentBackground(.hidden)     // hide system list bg
                       .listRowBackground(Color.theme.background.opacity(0.5))       // rows transparent; red shows through
                   }
                   .navigationTitle("Settings")
                   .toolbar {
                       ToolbarItem(placement: .topBarLeading) {
                           Button { dismiss() } label: {
                               Image(systemName: "xmark").font(.headline)
                           }
                       }
                   }
               }
               // Make the nav bar transparent so the ZStack background is visible
               .toolbarBackground(.hidden, for: .navigationBar)
               // Optional: if the title color looks off after hiding background, set a scheme:
               // .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    
    private var swiftfulthinkingSection: some View {
        Section(header: Text("Swiftful Thinking")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a @SwiftfulThinking coure on YouTube. It used MVVM Architecture, Combine and Coredata!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on YouTube 🥳", destination: youtubeURL)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Price may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Nick Sarno. It used SwiftfUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit Website 🤙", destination: personalURL)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
                Link("Terms of Svervices", destination: defaultURL)
                Link("Privacy Policy", destination: defaultURL)
                Link("Company Website", destination: defaultURL)
                Link("Learn More", destination: defaultURL)
        }
    }
    
}
