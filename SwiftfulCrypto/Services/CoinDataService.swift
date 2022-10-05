//
//  CoinDataService.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/26/22.
//

import Foundation
import Combine

class CoinDataService {
    @Published var allCoins: [CoinModel] = []
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        Task {
            guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { return }
            
            if let data = try? await NetworkingManager.download(url: url) {
                self.allCoins = try JSONDecoder().decode([CoinModel].self, from: data)
            }
        }
    }
}
