//
//  HomeView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/8/24.
//

import SwiftUI

struct HomeView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack {
            TabView {
                Text("Page 1")
                
                Text("Page 2")
                
                Text("Page 3")
            }
            .tabViewStyle(.page)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Logout")
                    } label: {
                        Image(systemName: "person.circle")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Navigate to new item")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationDestination(for: String.self) { _ in
                Text("New view here")
            }
        }
        
    }
}

#Preview {
    HomeView()
}
