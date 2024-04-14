//
//  TogglePromptView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/14/24.
//

import SwiftUI

struct TogglePromptView: View {
    @Binding var text: String
    @Binding var prompt: String
    @Binding var isLoggingIn: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Text(text)
            
            Button(prompt) {
                isLoggingIn.toggle()
            }
            
            Spacer()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TogglePromptView(text: .constant("Don't have an account?"), prompt: .constant("Sign up here"), isLoggingIn: .constant(true))
}
