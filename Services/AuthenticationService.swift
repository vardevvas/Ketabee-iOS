//
//  AuthenticationService.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 06/10/2023.
//

import Foundation

protocol AuthenticationService {
    func login(username: String, password: String, completion: @escaping (Result<String, Error>) -> Void)
}
