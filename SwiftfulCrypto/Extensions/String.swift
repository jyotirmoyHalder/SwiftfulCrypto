//
//  String.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 31/8/25.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
