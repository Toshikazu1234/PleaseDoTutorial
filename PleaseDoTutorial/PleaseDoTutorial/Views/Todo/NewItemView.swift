//
//  NewItemView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/11/24.
//

import SwiftUI

struct NewItemView: View {
    @State private var text = ""
    @State private var description = ""
    @State private var item = Item(id: "abc123", authorId: "q3cp49", title: "Test title", description: "Test description", startDate: .now, status: .todo, priority: .low)
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            
            TitledTextField(title: "Title", placeholder: "What do you need to do?", text: $text)
            
            Divider()
            
            TitledTextField(title: "Description", placeholder: "Add a brief description", text: $description)
            
            Divider()
            
            StatusMenu(status: $item.status)
            
            Divider()
            
            PriorityMenu(priority: $item.priority)
            
            Spacer()
            
            CTAButton(title: "Confirm") {
                print("CTAButton tapped")
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    NewItemView()
}
