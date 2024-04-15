//
//  SignUpFields.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/14/24.
//

import SwiftUI

struct SignUpFields: View {
    @State private var fname = ""
    @State private var lname = ""
    @State private var email = ""
    @State private var pw = ""
    
    var body: some View {
        VStack(spacing: 12) {
            KeyboardView(placeholder: "First name", text: $fname)
                .shadow(color: .gray, radius: 4, x: 1, y: 2.5)
            
            KeyboardView(placeholder: "Last name", text: $lname)
                .shadow(color: .gray, radius: 4, x: 1, y: 2.5)
            
            EmailTextField(placeholder: "user@email.com", text: $email)
                .shadow(color: .gray, radius: 4, x: 1, y: 2.5)
            
            PasswordField(placeholder: "password", text: $pw)
                .shadow(color: .gray, radius: 4, x: 1, y: 2.5)
        }
        .padding(.horizontal)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SignUpFields()
}
