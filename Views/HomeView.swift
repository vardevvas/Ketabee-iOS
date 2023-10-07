//
//  HomeView.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 07/10/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var isFilterPopupVisible = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome, User!")
                    // Greeting

                .padding()

                GridItemView() // Grid view to display items
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                isFilterPopupVisible.toggle()
                }) {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
            )
        }
        .sheet(isPresented: $isFilterPopupVisible) {
            FilterPopupView(isVisible: $isFilterPopupVisible)
        }
        Spacer()
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            RequestsView()
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Requests")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
    
    struct FilterPopupView: View {
        @Binding var isVisible: Bool

        var body: some View {
            NavigationView {
                Form {
                    // Add filter options and controls here
                }
                .navigationBarTitle("Filter", displayMode: .inline)
                .navigationBarItems(leading:
                    Button("Cancel") {
                        isVisible = false
                    },
                    trailing:
                    Button("Apply") {
                        // Implement filter logic here
                        isVisible = false
                    }
                )
            }
        }
    }

    struct GridItemView: View {
        var body: some View {
            // Replace this with your grid view implementation
            Text("Grid View Placeholder")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
