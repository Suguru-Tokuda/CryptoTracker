//
//  NetworkingManager.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/26/22.
//

import Foundation

class NetworkingManager {
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unkown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse(url: let url): return "[🔥] Bad response from URL. \(url)"
            case .unkown: return "[⚠️] Unknown error occured"
            }
        }
    }
    
    static func download(url: URL) async throws -> Data? {
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            return handleURLResponse(data: data, response: response)
        } catch {
            throw error
        }
    }
    
    static func handleURLResponse(data: Data?, response: URLResponse?) -> Data? {
        guard
            let data = data,
            let response = response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else {
                return nil
            }
        return data
    }
}
