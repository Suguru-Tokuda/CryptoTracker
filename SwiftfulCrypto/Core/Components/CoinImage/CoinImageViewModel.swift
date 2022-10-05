//
//  CoinImageViewModel.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/27/22.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        Task {
            for await value in dataService.$image.values {
                await MainActor.run(body: {
                    self.isLoading = false
                    self.image = value
                })
            }
        }
    }
}
