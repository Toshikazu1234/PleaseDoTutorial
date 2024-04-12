//
//  ItemDetailsView.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/11/24.
//

import SwiftUI

struct ItemDetailsView: View {
    let item: Item
    
    var body: some View {
        VStack {
            Text(item.title)
            
            Text(item.description)
            
            Text(item.status.rawValue)
            
            Text(item.priority.rawValue)
        }
    }
}

#Preview {
    ItemDetailsView(item: Item(id: "abc123", authorId: "John Doe", title: "First item", description: "First description", startDate: .now, status: .todo, priority: .low))
}
