//
//  XMarkButton.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/28/22.
//

import SwiftUI

struct XMarkButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .foregroundColor(Color.theme.accent)
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
