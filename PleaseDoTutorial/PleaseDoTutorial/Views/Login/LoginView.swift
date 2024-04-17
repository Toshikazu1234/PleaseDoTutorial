//
//  LoginView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/13/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var vm = LoginVM()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            
            LoginTitleView()
            
            Text(vm.titleText)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.horizontal)
            
            if vm.isLoggingIn {
                LoginFields(email: $vm.email, pw: $vm.pw)
            } else {
                SignUpFields(fname: $vm.fname, lname: $vm.lname, email: $vm.newEmail, pw: $vm.newPw)
            }
            
            HStack {
                Spacer()
                
                LoginButton(title: vm.titleText) {
                    if vm.isLoggingIn {
                        print("Login here")
                    } else {
                        vm.signUp()
                    }
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            TogglePromptView(text: $vm.toggleText, prompt: $vm.prompt, isLoggingIn: $vm.isLoggingIn)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
