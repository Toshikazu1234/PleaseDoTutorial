//
//  LoginFields.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/13/24.
//

import SwiftUI

struct LoginFields: View {
    @State private var email = ""
    
    var body: some View {
        VStack(spacing: 12) {
            EmailTextField(placeholder: "user@email.com", text: $email)
            
            // TextField
        }
        .padding(.horizontal)
    }
}

#Preview {
    LoginFields()
}
