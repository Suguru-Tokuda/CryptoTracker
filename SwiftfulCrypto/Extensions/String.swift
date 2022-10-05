//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/30/22.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
