//
//  OTPView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 08/10/2023.
//

import SwiftUI

struct OTPView: View {
    @ObservedObject var viewModel: OTPViewModel
    
    @State var isFocused = false
    
    let textBoxWidth = UIScreen.main.bounds.width / 8
    let textBoxHeight = UIScreen.main.bounds.width / 8
    let spaceBetweenBoxes: CGFloat = 10
    let paddingOfBox: CGFloat = 1
    var textFieldOriginalWidth: CGFloat {
        (textBoxWidth*6)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Check Your Email")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                ZStack {
                    
                    HStack (spacing: spaceBetweenBoxes){
                        
                        otpText(text: viewModel.otp1)
                        otpText(text: viewModel.otp2)
                        otpText(text: viewModel.otp3)
                        otpText(text: viewModel.otp4)
                    }
                    
                    
                    TextField("", text: $viewModel.otpField)
                        .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                        .disabled(viewModel.isTextFieldDisabled)
                        .textContentType(.oneTimeCode)
                        .foregroundColor(.clear)
                        .accentColor(.clear)
                        .background(Color.clear)
                        .keyboardType(.numberPad)
                }
                .padding()
                HStack {
                    Text("Code expires in: ")
                    Text("3:20")
                        .foregroundStyle(Color.red)
                }
                .padding()
                Button(action: {
                }) {
                    NavigationLink("Verify", destination: LoginView(viewModel: LoginViewModel(authService: APIService())))
                            .buttonStyle(BorderedButtonStyle())
                            .foregroundColor(.ketabeeSecondary)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
                            .background(.accent)
                            .cornerRadius(5)
                }
                Button(action: {
                    // Trigger the login logic
                }) {
                    Text("Send Again")
                        .font(.headline)
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(Color.ketabeeSecondary)
                        .cornerRadius(10)
                        .padding()
                }
                
            }
        }
        .navigationTitle("OTP")
    }
    
    private func otpText(text: String) -> some View {
        
        return Text(text)
            .font(.title)
            .frame(width: textBoxWidth, height: textBoxHeight)
            .background(VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 1)
                    .frame(height: 0.5)
            })
            .padding(paddingOfBox)
    }}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView(viewModel: OTPViewModel())
    }
}
