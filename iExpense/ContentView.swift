//
//  ContentView.swift
//  iExpense
//
//  Created by Al Amin on 28/3/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
   @ObservedObject var expenses = Expenses()
    @State private var showingAddExpense = false
   
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.id){ item in
                    Text(item.name)
                    
                }
                .onDelete(perform: removeItems)
                
            }
            .navigationBarTitle("iExpense")
            .navigationBarItems(trailing:
            
                Button(action: {
                    self.showingAddExpense = true
                }){
                    Image(systemName: "plus")
                }
            )
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: self.expenses)
            }
        }
        
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
