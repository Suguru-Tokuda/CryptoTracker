//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/28/22.
//

import Foundation
import Combine

class MarketDataService {
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?

    init() {
        getCoins()
    }

    func getCoins() {
        Task {
            guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
            
            if let data = try? await NetworkingManager.download(url: url) {
                let globalData = try JSONDecoder().decode(GlobalData.self, from: data)
                self.marketData = globalData.data
            }
        }
    }

}

