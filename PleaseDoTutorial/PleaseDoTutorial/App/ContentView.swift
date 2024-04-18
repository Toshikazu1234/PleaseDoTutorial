//
//  ContentView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/7/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = LoginVM()
    
    var body: some View {
        switch vm.loginStatus {
        case .unknown:
            ProgressView()
                .progressViewStyle(.circular)
        case .loggedIn:
            HomeView()
        case .loggedOut:
            LoginView()
                .environmentObject(vm)
        }
    }
}

#Preview {
    ContentView()
}
