//
//  LoginService.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 06/10/2023.
//

import Foundation

class APIService: AuthenticationService {
    func login(username: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        // Configure your API request here
        guard let url = URL(string: "https://your-api-endpoint.com/login") else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        // Set request headers, body, and other necessary configurations.
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            // Parse the response to extract the JWT token.
            if let data = data, let token = String(data: data, encoding: .utf8) {
                completion(.success(token))
            } else {
                completion(.failure(NetworkError.invalidResponse))
            }
        }.resume()
    }
}

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    // Add more error cases as needed
}
