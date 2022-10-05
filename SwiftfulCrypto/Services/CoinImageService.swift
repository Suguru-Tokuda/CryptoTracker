//
//  CoinImageService.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/27/22.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    @Published var image: UIImage?
    var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: coin.id, folderName: folderName) {
            image = savedImage
            print("Retrieved image from File Manager!")
        } else {
            downloadCoinImage()
            print("Downloading image now")
        }
    }
    
    private func downloadCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion,
                receiveValue: { [weak self] returnedImage in
                    guard let self = self, let downlodedImage = returnedImage else { return }
                    self.image = returnedImage
                    self.imageSubscription?.cancel()
                    self.fileManager.saveImage(image: downlodedImage, imageName: self.imageName, folderName: self.folderName)
            })
    }
}
