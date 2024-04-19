//
//  ListVM.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/12/24.
//

import Foundation

final class ListVM: ObservableObject {
    @Published var todoItems: [Item] = [
        Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now, status: .todo, priority: .low),
        Item(id: "123abc", authorId: "John Doe", title: "Second item", description: "Second description", startDate: .now + 5, status: .todo, priority: .medium),
        Item(id: "789xyz", authorId: "John Doe", title: "Third item", description: "Third description", startDate: .now + 10, status: .todo, priority: .low)
    ]
    @Published var inProgressItems: [Item] = [
        Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now, status: .inProgress, priority: .low),
        Item(id: "123abc", authorId: "John Doe", title: "Second item", description: "Second description", startDate: .now + 5, status: .inProgress, priority: .medium),
        Item(id: "789xyz", authorId: "John Doe", title: "Third item", description: "Third description", startDate: .now + 10, status: .inProgress, priority: .low)
    ]
    @Published var doneItems: [Item] = [
        Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now, status: .done, priority: .low),
        Item(id: "123abc", authorId: "John Doe", title: "Second item", description: "Second description", startDate: .now + 5, status: .done, priority: .medium),
        Item(id: "789xyz", authorId: "John Doe", title: "Third item", description: "Third description", startDate: .now + 10, status: .done, priority: .low)
    ]
    @Published var unknown: [Item] = []
    
    init() {
        IM.shared.delegate = self
    }
    
    func fetchItems() {
        IM.shared.fetchItems()
    }
}

extension ListVM: ItemsManagerDelegate {
    func didFetchBatchItems(_ items: [Status: [Item]]) {
        for status in items.keys {
            switch status {
            case .todo:
                todoItems = items[status]!
            case .inProgress:
                inProgressItems = items[status]!
            case .done:
                doneItems = items[status]!
            case .unknown:
                continue
            }
        }
    }
    
    func didAddItem(_ item: Item) {
        <#code#>
    }
    
    func didUpdateItem(_ item: Item) {
        <#code#>
    }
    
    func didDeleteItem(_ item: Item) {
        <#code#>
    }
}
