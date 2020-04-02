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
   
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.id){ item in
                    Text(item.name)
                    
                }
                .onDelete(perform: removeItems)
                Button(action: {
                    let expense = ExpenseItem(name:"Test", type: "Personal", amount: 50)
                    self.expenses.items.append(expense)
                }){
                    Image(systemName: "plus")
                }
            }
            .navigationBarTitle("iExpense")
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
