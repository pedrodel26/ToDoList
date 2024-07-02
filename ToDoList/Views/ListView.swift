//
//  ListView.swift
//  ToDoList
//
//  Created by Pedro Delmondes  on 10/06/2024.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(listViewModel.items) { item in
                    ListViewRow(item: item)
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Singers")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView())
            )
        }
    }
}

#Preview {
    ListView()
        .environmentObject(ListViewModel())
}


