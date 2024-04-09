//
//  HomeView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/8/24.
//

import SwiftUI

struct HomeView: View {
    @State private var path = NavigationPath()
    @State private var todoItems: [Item] = [
        Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now),
        Item(id: "123abc", authorId: "John Doe", title: "Second item", description: "Second description", startDate: .now + 5),
        Item(id: "789xyz", authorId: "John Doe", title: "Third item", description: "Third description", startDate: .now + 10)
    ]
    @State private var inProgressItems: [Item] = [
        Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now),
        Item(id: "123abc", authorId: "John Doe", title: "Second item", description: "Second description", startDate: .now + 5),
        Item(id: "789xyz", authorId: "John Doe", title: "Third item", description: "Third description", startDate: .now + 10)
    ]
    @State private var doneItems: [Item] = [
        Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now),
        Item(id: "123abc", authorId: "John Doe", title: "Second item", description: "Second description", startDate: .now + 5),
        Item(id: "789xyz", authorId: "John Doe", title: "Third item", description: "Third description", startDate: .now + 10)
    ]
    
    var body: some View {
        NavigationStack {
            TabView {
                ListView(title: "To Do", items: $todoItems)
                
                ListView(title: "In Progress", items: $inProgressItems)
                
                ListView(title: "Done", items: $doneItems)
            }
            .tabViewStyle(.page)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Logout")
                    } label: {
                        Image(systemName: "person.circle")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Navigate to new item")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationDestination(for: String.self) { _ in
                Text("New view here")
            }
        }
        
    }
}

#Preview {
    HomeView()
}
