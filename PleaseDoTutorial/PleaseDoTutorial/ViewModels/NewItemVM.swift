//
//  NewItemVM.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/19/24.
//

import Foundation

final class NewItemVM: ObservableObject {
    
    @Published var newItem = Item.empty()
    
    func saveNewItem() {
        IM.shared.save(newItem)
    }
}
