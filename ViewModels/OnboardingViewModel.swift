//
//  OnboardingViewModel.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 04/10/2023.
//

import SwiftUI


struct OnboardingPage: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
}

class OnboardingViewModel: ObservableObject {
    
    @Published var onboardingData: [OnboardingPage] = [
        OnboardingPage(title: "Welcome to Ketabee", description: "Become a part of the Ketabee Community.", imageName: "onBoarding-1"),
        OnboardingPage(title: "Get Started", description: "Sign up or log in to become a Building block of Ketabee Community through the power of Sharing.", imageName: "onBoarding-2"),
        OnboardingPage(title: "Explore", description: "Your Ketabee library will now become Global.", imageName: "onBoarding-3")
    ]
}

