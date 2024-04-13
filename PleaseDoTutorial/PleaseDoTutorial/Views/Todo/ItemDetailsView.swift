//
//  ItemDetailsView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/11/24.
//

import SwiftUI

struct ItemDetailsView: View {
    let item: Item
    @State private var updatedItem = Item(id: "abc123", authorId: "q3cp49", title: "Test title", description: "Test description", startDate: .now, status: .todo, priority: .low)
    
    var body: some View {
        VStack(spacing: 10) {
            TitledTextField(title: "Title", placeholder: "What do you need to do?", text: $updatedItem.title)
            
            Divider()
            
            TitledTextField(title: "Description", placeholder: "Add a brief description", text: $updatedItem.description)
            
            Divider()
            
            StatusMenu(status: $updatedItem.status)
            
            Divider()
            
            PriorityMenu(priority: $updatedItem.priority)
            
            Spacer()
            
            CTAButton(title: "Confirm") {
                print("CTAButton tapped")
            }
        }
        .padding()
        .navigationTitle("Details")
    }
}

#Preview {
    ItemDetailsView(item: Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now, status: .todo, priority: .low))
}
