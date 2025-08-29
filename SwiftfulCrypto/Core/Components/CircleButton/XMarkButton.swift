//
//  XMarkButton.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 28/8/25.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

#Preview {
    XMarkButton()
}
