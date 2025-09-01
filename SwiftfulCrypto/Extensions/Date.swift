//
//  Date.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 31/8/25.
//

import Foundation

extension Date {
    
    // athDate: "2021-03-13T20:49:26.606Z"
    
    init(coingeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSX"
        let date = formatter.date(from: coingeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
 
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
}
