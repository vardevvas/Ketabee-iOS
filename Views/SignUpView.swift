//
//  SignUpView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 07/10/2023.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel: SignUpViewModel

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                // Personal Information Fields
                HStack {
                    VStack (alignment: .leading){
                        Text("First Name")
                        TextField("Ali", text: $viewModel.firstName)
                            .padding()
                            .border(.ketabeeSecondary)
                    }
                    VStack (alignment: .leading){
                        Text("Last Name")
                        TextField("Mohammed", text: $viewModel.lastName)
                            .padding()
                            .border(.ketabeeSecondary)
                        
                    }
                }
                Text("Email")
                    .multilineTextAlignment(.trailing)
                TextField("example@gmail", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .border(.ketabeeSecondary)
                Text("Phone Number")
                TextField("+971345656992", text: $viewModel.phoneNumber)
                    .keyboardType(.numberPad)
                    .padding()
                    .border(.ketabeeSecondary)
                Text("Password")
                SecureField("******", text: $viewModel.password)
                    .padding()
                    .border(.ketabeeSecondary)
                
                // Terms and Conditions Toggle
                Button(action: {
                    viewModel.agreedToTerms.toggle()
                }) {
                    HStack {
                        Image(systemName: viewModel.agreedToTerms ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(viewModel.agreedToTerms ? .accentColor : .gray)
                        
                        Text("I agree to the Terms and Conditions")
                    }
                }
                .padding()
                Button(action: {
                    // Perform sign-up action here
                }) {
                    Text("Sign Up")
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                }
                .padding()
                .disabled(!viewModel.agreedToTerms)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .navigationBarTitle("Sign Up", displayMode: .inline)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModel: viewModel) // Initialize with an empty SignUpViewModel
    }
}
