//
//  RestPasswordView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 08/10/2023.
//

import SwiftUI

struct RestPasswordView: View {
    @ObservedObject var viewModel: ResetPasswordViewModel

        var body: some View {
            NavigationView {
                VStack {
                    Text("Reset your password")
                        .font(.title)
                    Text("please enter your email")

                    HStack(alignment: .top) {
                        Image(systemName: "envelope.circle.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.ketabeeSecondary)
                        TextField("Email or username", text: $viewModel.email)
                            .padding([.leading], 10)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding([.horizontal, .bottom], 30)
                    Button(action: {
                    }) {
                        NavigationLink("Rest Password", destination: OTPView(viewModel: OTPViewModel()))
                                .buttonStyle(BorderedButtonStyle())
                                .foregroundColor(.ketabeeSecondary)
                                .frame(width: 200,height: 50)
                                .background(.accent)
                                .cornerRadius(5)
                    }

                }
                .padding()
            }
            .navigationTitle("Rest Password")
        }
    }

    struct ResetPasswordView_Previews: PreviewProvider {
        static var previews: some View {
            RestPasswordView(viewModel: ResetPasswordViewModel())
        }
    }
