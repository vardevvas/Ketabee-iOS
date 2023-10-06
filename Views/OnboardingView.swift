//
//  OnboardingView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 04/10/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @ObservedObject var viewModel = OnboardingViewModel()
    
    var body: some View {
        TabView {
            ForEach(viewModel.onboardingData) { page in
                OnboardingPageView(onboardingPage: page
                )
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        StartButtonView()
    }
    
    struct OnboardingPageView: View {
        let onboardingPage: OnboardingPage
        
        var body: some View {
            VStack {
                Image(onboardingPage.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text(onboardingPage.title)
                    .font(.title)
                    .bold()
                    .padding(.top, 20)
                    .foregroundColor(Color.ketabeeSecondary)
                
                Text(onboardingPage.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
            }
            
            .padding()
        }
    }
    
    struct StartButtonView: View {
        // MARK: - PROPERTIES
        
        @AppStorage("isOnboarding") var isOnboarding: Bool?
        
        // MARK: - BODY
        
        var body: some View {
          Button(action: {
            isOnboarding = false
          }) {
            HStack(spacing: 8) {
              Text("Start")
              
              Image(systemName: "arrow.right.circle")
                .imageScale(.large)
            }
              
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
              Capsule().strokeBorder(Color("AccentColor"), lineWidth: 1.25)
            )
          } //: BUTTON
        }
    }

}

#Preview {
    OnboardingView()
}
