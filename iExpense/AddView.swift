//
//  AddView.swift
//  iExpense
//
//  Created by Al Amin on 3/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    
    @ObservedObject var expenses: Expenses
    
    static let types = ["Business", "Personal"]
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                Picker("Type", selection: $type) {
                    ForEach(Self.types, id: \.self) { type in
                        Text(type)
                    }
                }
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
            }
        .navigationBarTitle("Add new expense")
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}