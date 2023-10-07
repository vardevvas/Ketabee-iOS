//
//  SignUpViewModel.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 07/10/2023.
//

import Foundation
import Combine

class SignUpViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var phoneNumber = ""
    @Published var password = ""
    @Published var agreedToTerms = false

    // Validation functions (you can define your own validation logic)
    func isValidFirstName(_ firstName: String) -> Bool {
        // Add your first name validation logic here
        return !firstName.isEmpty
    }

    func isValidLastName(_ lastName: String) -> Bool {
        // Add your last name validation logic here
        return !lastName.isEmpty
    }

    func isValidEmail(_ email: String) -> Bool {
        // Add your email validation logic here
        return email.isValidEmail() // Example: Use a validation extension method
    }

    func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
        // Add your phone number validation logic here
        return phoneNumber.count == 10 // Example: Check for a specific length
    }

    func isValidPassword(_ password: String) -> Bool {
        // Add your password validation logic here
        return password.count >= 6 // Example: Minimum password length
    }
}

extension String {
    // Example email validation using a regular expression
    func isValidEmail() -> Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
    }
}
