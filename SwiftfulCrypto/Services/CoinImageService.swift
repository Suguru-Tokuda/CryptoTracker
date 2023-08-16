//
//  CoinImageService.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/27/22.
//

import Foundation
import SwiftUI

class CoinImageService {
    @Published var image: UIImage?
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
        Task {
            guard let url = URL(string: coin.image) else { return }
            
            if let data = try? await NetworkingManager.download(url: url) {
                if let image = UIImage(data: data) {
                    self.image = UIImage(data: data)
                    self.fileManager.saveImage(image: image, imageName: self.imageName, folderName: self.folderName)
                }
            }
        }
    }
}
