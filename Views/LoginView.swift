//
//  LoginView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 04/10/2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Log in")
                    .font(.system(size: 40))
                
                HStack(alignment: .top) {
                    Image(systemName: "envelope.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.ketabeeSecondary)
                    TextField("Email or username", text: $viewModel.username)
                        .padding([.leading], 10)
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
                        .padding([.leading], 10)
                    
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding([.horizontal], 30)
                NavigationLink("Forgot Password?", destination: SignUpView(viewModel: SignUpViewModel()))
                    .foregroundColor(.accentColor)
                    .frame(alignment: .leading)

                Button(action: {
                }) {
                    NavigationLink("Login", destination: HomeView())
                            .buttonStyle(BorderedButtonStyle())
                            .foregroundColor(.ketabeeSecondary)
                            .frame(width: 100,height: 50)
                            .background(.accent)
                            .cornerRadius(5)
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
                HStack{
                    Text("Don’t have an account?")
                    NavigationLink("sign up!", destination: SignUpView(viewModel: SignUpViewModel()))
                        .foregroundColor(.accentColor)
                }
                .padding()
            
                            
                if viewModel.isLoggedIn {
                    Text("Logged in successfully!")
                } else if let error = viewModel.loginError {
                    Text("Login failed: \(error.localizedDescription)")
                }

            }
            .padding()
        }
        .navigationTitle("Login")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an instance of the LoginViewModel to use as the viewModel argument
        let viewModel = LoginViewModel(authService: APIService()) // Provide a suitable authService
        
        // Pass the viewModel to the LoginView
        LoginView(viewModel: viewModel)
    }
}
