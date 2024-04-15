//
//  LoginView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/13/24.
//

import SwiftUI

struct LoginView: View {
    @State private var text = "Don't have an account?"
    @State private var prompt = "Sign up here"
    @State private var isLoggingIn = true
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            
            LoginTitleView()
            
            Text("Login")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.horizontal)
            
            if isLoggingIn {
                LoginFields()
            } else {
                SignUpFields()
            }
            
            HStack {
                Spacer()
                
                LoginButton(title: "Login") {
                    print("Login button tapped")
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            TogglePromptView(text: $text, prompt: $prompt, isLoggingIn: $isLoggingIn)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
