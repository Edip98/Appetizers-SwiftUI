//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Эдип on 07.10.2022.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(compeleted: @escaping (Result<[Appetizer], APError>) -> Void) {
        
        guard let url = URL(string: appetizerURL) else {
            compeleted(.failure(.invalidURL))
            return
        }
        
        let tast = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ = error {
                compeleted(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                compeleted(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                compeleted(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                compeleted(.success(decodedResponse.request))
            } catch {
                compeleted(.failure(.unableToComplete))
            }
        }
        
        tast.resume()
    }
}
