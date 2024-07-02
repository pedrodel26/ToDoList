//
//  ItemModel.swift
//  ToDoList
//
//  Created by Pedro Delmondes  on 11/06/2024.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
