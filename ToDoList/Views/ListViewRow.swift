//
//  ListViewRow.swift
//  ToDoList
//
//  Created by Pedro Delmondes  on 10/06/2024.
//

import SwiftUI

struct ListViewRow: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title3)
        .padding(.vertical, 8)
    }
}

#Preview {
  Group {
    ListViewRow(item: ItemModel(title: "This is the first item", isCompleted: true))
    ListViewRow(item: ItemModel(title: "This is the second item", isCompleted: false))
  }
}



