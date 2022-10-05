//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/29/22.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
