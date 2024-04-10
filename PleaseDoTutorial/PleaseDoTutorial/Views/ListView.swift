//
//  ListView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/8/24.
//

import SwiftUI

struct ListView: View {
    let title: String
    @Binding var items: [Item]
    
    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, maxHeight : 32)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.orange)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white, lineWidth: 2)
                        }
                }
                .padding(.horizontal)
                .padding(.top)
            
            List($items) { $item in
                Text(item.title)
            }
            .scrollContentBackground(.hidden)
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    ListView(title: "To Do", items: .constant([
        Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now, status: .todo, priority: .low),
        Item(id: "123abc", authorId: "John Doe", title: "Second item", description: "Second description", startDate: .now + 5, status: .inProgress, priority: .medium),
        Item(id: "789xyz", authorId: "John Doe", title: "Third item", description: "Third description", startDate: .now + 10, status: .todo, priority: .low)
    ]))
}
