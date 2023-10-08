//
//  ResetPasswordViewModel.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 08/10/2023.
//

import SwiftUI

class ResetPasswordViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var newPassword: String = ""
    @Published var confirmPassword: String = ""
    @Published var isResetSuccessful: Bool = false
    
    func resetPassword() {
        // Perform password reset logic here
        // Check if newPassword and confirmPassword match
        if newPassword == confirmPassword {
            // Passwords match, perform reset
            // You can make an API call to update the password here
            // If reset is successful, set isResetSuccessful to true
            isResetSuccessful = true
        } else {
            // Passwords do not match, show an error message or handle accordingly
            isResetSuccessful = false
        }
    }
}
