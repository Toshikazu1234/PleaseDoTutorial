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
    
    var body: some View {
        VStack {
            TitledTextField(title: "Title", placeholder: "What do you need to do?", text: $text)
            
            Divider()
            
            TitledTextField(title: "Description", placeholder: "Add a brief description", text: $description)
            
            Divider()
            
            
        }
    }
}

#Preview {
    NewItemView()
}
