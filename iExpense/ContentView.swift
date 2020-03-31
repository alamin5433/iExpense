//
//  ContentView.swift
//  iExpense
//
//  Created by Al Amin on 28/3/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    
    @State private var currentNumber = UserDefaults.standard.integer(forKey: "currentNumber")
   
    var body: some View {
        NavigationView {
            VStack {
                    List {
                        ForEach(numbers, id: \.self){ number in
                            Text("\(number)")
                        }
                    .onDelete(perform: removeRows)
                    }
                    
                    Button("Add Number") {
                        self.numbers.append(self.currentNumber)
                        
                        self.currentNumber += 1
                        UserDefaults.standard.set(self.currentNumber, forKey: "currentNumber")
                    }
                }
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func removeRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
