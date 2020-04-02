//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Al Amin on 2/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//
import SwiftUI
struct ExpenseItem: Identifiable {
   // var id: ObjectIdentifier
    
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}
