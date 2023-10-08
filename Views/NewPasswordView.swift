//
//  NewPasswordView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 08/10/2023.
//

import SwiftUI

struct NewPasswordView: View {
    @ObservedObject var viewModel: ResetPasswordViewModel

        var body: some View {
            NavigationView {
                VStack {
                    Text("Reset your password")
                        .font(.title)
                    Text("please enter your email")

                    HStack(alignment: .top) {
                        Image(systemName: "key.viewfinder")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.ketabeeSecondary)
                        SecureField("New Password", text: $viewModel.newPassword)
                            .padding([.leading], 10)
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding([.horizontal, .top], 30)

                    HStack(alignment: .top) {
                        Image(systemName: "key.viewfinder")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.ketabeeSecondary)
                        SecureField("Confirm Password", text: $viewModel.confirmPassword)
                            .padding([.leading], 10)
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding([.horizontal, .top], 30)

                    
                    Button(action: {
                    }) {
                        NavigationLink("Rest Password", destination: LoginView(viewModel: LoginViewModel(authService: APIService())))
                                .buttonStyle(BorderedButtonStyle())
                                .foregroundColor(.ketabeeSecondary)
                                .frame(width: 200,height: 50)
                                .background(.accent)
                                .cornerRadius(5)
                    }
                    .padding([.horizontal, .top], 30)

                }
                .padding()
            }
            .navigationTitle("Rest Password")
        }
    }

    struct NewPasswordView_Previews: PreviewProvider {
        static var previews: some View {
            NewPasswordView(viewModel: ResetPasswordViewModel())
        }
    }
