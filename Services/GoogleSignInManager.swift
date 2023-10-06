////
////  GoogleSignInManager.swift
////  Ketabee-iOS
////
////  Created by Ali AwadAlkarim on 06/10/2023.
////
//
//import SwiftUI
//import GoogleSignIn
//
//class GoogleSignInManager: ObservableObject, GIDSignInDelegate {
//    @Published var isSignedIn: Bool = false
//    
//    init() {
//        GIDSignIn.sharedInstance().clientID = "YOUR_CLIENT_ID"
//        GIDSignIn.sharedInstance().delegate = self
//    }
//    
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//        if error == nil {
//            // Successfully signed in with Google
//            isSignedIn = true
//            print("Google Sign-In Successful: \(user.userID)")
//            // You can handle the user data and authentication here
//        } else {
//            print("Google Sign-In Failed: \(error.localizedDescription)")
//        }
//    }
//    
//    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
//        // Handle disconnection or log out here
//        isSignedIn = false
//    }
//}
//
//struct GoogleSignInView: View {
//    @ObservedObject var googleSignInManager = GoogleSignInManager()
//    
//    var body: some View {
//        VStack {
//            if googleSignInManager.isSignedIn {
//                Text("Google Sign-In Successful")
//            } else {
//                Button(action: {
//                    GIDSignIn.sharedInstance().presentingViewController = UIApplication.shared.windows.first?.rootViewController
//                    GIDSignIn.sharedInstance().signIn()
//                }) {
//                    Text("Sign in with Google")
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                }
//            }
//        }
//    }
//}
