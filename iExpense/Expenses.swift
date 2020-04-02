//
//  Expenses.swift
//  iExpense
//
//  Created by Al Amin on 2/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//
import SwiftUI
class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
