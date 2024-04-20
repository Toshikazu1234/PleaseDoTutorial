//
//  NewItemView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/11/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject private var vm = NewItemVM()
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            
            TitledTextField(title: "Title", placeholder: "What do you need to do?", text: $vm.newItem.title)
            
            Divider()
            
            TitledTextField(title: "Description", placeholder: "Add a brief description", text: $vm.newItem.description)
            
            Divider()
            
            StatusMenu(status: $vm.newItem.status)
            
            Divider()
            
            PriorityMenu(priority: $vm.newItem.priority)
            
            Spacer()
            
            CTAButton(title: "Confirm") {
                vm.saveNewItem()
            }
            .alert("Alert", isPresented: $vm.saveItemError) {
                Button("Dismiss", role: .cancel) {}
            } message: {
                Text("Error saving new item.")
            }
            .alert("Success!", isPresented: $vm.didSaveItem) {
                Button("Dismiss", role: .cancel) {
                    
                }
            } message: {
                Text("New item saved successfully.")
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    NewItemView()
}
