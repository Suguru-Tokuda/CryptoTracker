//
//  File.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/28/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
