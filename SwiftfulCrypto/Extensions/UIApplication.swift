//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 27/8/25.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
