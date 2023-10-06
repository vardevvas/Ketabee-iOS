//
//  LoginView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 04/10/2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        VStack {
            Text("Log in")
                .font(.system(size: 40))
                
            HStack(alignment: .top) {
              Image(systemName: "envelope.circle.fill")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(Color.ketabeeSecondary)
              TextField("Email or username", text: $viewModel.username)
            }
            .padding()
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1)
            )
            .padding([.horizontal, .bottom], 30)
        
            HStack(alignment: .top) {
              Image(systemName: "key.viewfinder")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(Color.ketabeeSecondary)
                SecureField("Password", text: $viewModel.password)
            }
            .padding()
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1)
            )
            .padding([.horizontal], 30)
            
            Button(action: {
                viewModel.login() // Trigger the login logic
            }) {
                Text("Login")
                    .font(.headline)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(Color.ketabeeSecondary)
                    .cornerRadius(10)
                    .padding()
                    .opacity(viewModel.isLoggingIn ? 0.5 : 1.0) // Disable button during login
            }
            Text("Or Continue with")
            
            Button(action: {
                viewModel.login() // Trigger the login logic
            }) {
                Image(systemName: "g.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.ketabeeSecondary)
                    .padding(5)

                
                Text("Log in with Google")
                    .font(.headline)
                    .padding()
                    .foregroundColor(Color.ketabeeSecondary)
            }
            .background(Color.accentColor)
            .cornerRadius(10)
            if viewModel.isLoggedIn {
                Text("Logged in successfully!")
            } else if let error = viewModel.loginError {
                Text("Login failed: \(error.localizedDescription)")
            }

        }
        .padding()
    }
}

#Preview {
    LoginView()
}
