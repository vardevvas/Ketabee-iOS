//
//  LoginViewModel.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 06/10/2023.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
    
    private let authService: AuthenticationService
    private var cancellables: Set<AnyCancellable> = []
    
    // Properties to store user input (e.g., username and password)
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var loginError: Error?
    @Published var isLoggedIn = false
    
    init(authService: AuthenticationService) {
        self.authService = authService
    }
    // Property to track whether login is in progress
    @Published var isLoggingIn: Bool = false
    
    // Function to perform the login logic
    func login() {
        // Simulate a login request (replace with your actual login logic)
        
        authService.login(username: username, password: password) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let token):
                    // Handle successful login, save the token, and update UI.
                    self?.isLoggedIn = true
                case .failure(let error):
                    // Handle login error and update UI.
                    self?.loginError = error
                }
            }
        }
    }
}

//#Preview {
//    LoginViewModel()
//}
