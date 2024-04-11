//
//  ListItemView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/9/24.
//

import SwiftUI

struct ListItemView: View {
    let item: Item
    let height: CGFloat
    
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 3) {
                Text("Title")
                    .font(.headline)
                    .lineLimit(1)
                
                Text("Some description goes here.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
            
            Spacer()
            
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.blue)
                .frame(maxHeight: height * 0.45)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ListItemView(item: Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now, status: .todo, priority: .low), height: 100)
}
